using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.IdentityModel.Tokens.Jwt;
using System.Net.Http.Headers;
using System.Text;
using Techcareer.Web.Models;

namespace Techcareer.Web.Controllers
{
    public class PostController : Controller
    {
        public static string baseUrl = "https://localhost:7105/api/posts/";
        public static string userId = "";
        public async Task<IActionResult> Index(string searchString)
        {
            var posts = await GetPosts();
            posts = posts.Where(p => p.UserId == int.Parse(userId)).ToList();

            if (posts == null)
                return Redirect("~/Home/Index");

            ViewData["CurrentFilter"] = searchString;
           if(!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(p => p.Title.ToLower().Contains(searchString.ToLower()) && p.UserId==int.Parse(userId)).ToList();
            }

            return View(posts);
        }

        [HttpGet]
        public async Task<List<Post>> GetPosts()
        {
            // using the access token to call a protected web api
            var accessToken = HttpContext.Session.GetString("JWToken");
            if (accessToken == null)
                return null;


            var handler = new JwtSecurityTokenHandler();
            var jwt = handler.ReadJwtToken(accessToken);
            userId = jwt.Claims.First(claim => claim.Type == "Id").Value;

            var url = baseUrl;
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
            string jsonStr = await client.GetStringAsync(url);

            var res = JsonConvert.DeserializeObject<List<Post>>(jsonStr).ToList();

            return res;
        }

        public IActionResult Create()
        {
            if (HttpContext.Session.GetString("JWToken") == null)
                return Redirect("~/Home/Index");

            ViewBag.UserId = userId;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,UserId,Title,Body")] Post post)
        {
            var accessToken = HttpContext.Session.GetString("JWToken");
            var url = baseUrl;
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

            var stringContent = new StringContent(JsonConvert.SerializeObject(post), Encoding.UTF8, "application/json");
            await client.PostAsync(url, stringContent);

            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Edit(int? id)
        {
            if(id== null)
            {
                return NotFound();
            }

            var accessToken = HttpContext.Session.GetString("JWToken");
            if (accessToken == null)
                return Redirect("~/Home/Index");

            var url = baseUrl + id;
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

            string jsonStr = await client.GetStringAsync(url);
            var res = JsonConvert.DeserializeObject<Post>(jsonStr);

            if(res==null)
            {
                return NotFound();
            }
            return View(res);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,UserId,Title,Body")] Post post)
        {
            if(id!=post.Id)
            {
                return NotFound();
            }
            var accessToken = HttpContext.Session.GetString("JWToken");
            var url = baseUrl+id;
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

            var stringContent = new StringContent(JsonConvert.SerializeObject(post), Encoding.UTF8, "application/json");
            await client.PutAsync(url, stringContent);

            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var accessToken = HttpContext.Session.GetString("JWToken");
            if (accessToken == null)
                return Redirect("~/Home/Index");

            var url = baseUrl + id;
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

            string jsonStr = await client.GetStringAsync(url);
            var res = JsonConvert.DeserializeObject<Post>(jsonStr);

            if (res == null)
            {
                return NotFound();
            }
            return View(res);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var accessToken = HttpContext.Session.GetString("JWToken");
            var url = baseUrl + id;
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

            await client.DeleteAsync(url);

            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Detail(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var accessToken = HttpContext.Session.GetString("JWToken");
            if (accessToken == null)
                return Redirect("~/Home/Index");

            var url = baseUrl + id;
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

            string jsonStr = await client.GetStringAsync(url);
            var posts = JsonConvert.DeserializeObject<Post>(jsonStr);

            if (posts == null)
            {
                return NotFound();
            }
            return View(posts);
        }
    }
}
