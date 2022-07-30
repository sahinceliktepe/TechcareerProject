using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Net.Http.Headers;
using System.Text;
using Techcareer.Web.Models;

namespace Techcareer.Web.Controllers
{
    public class RegisterController : Controller
    {
        public static string baseUrl = "https://localhost:7105/api/users/";
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Index([Bind("UserId,UserName,Password")] User user)
        {
            var url = baseUrl;
            HttpClient client = new HttpClient();

            var stringContent = new StringContent(JsonConvert.SerializeObject(user), Encoding.UTF8, "application/json");
            await client.PostAsync(url, stringContent);

            TempData["Message"] = "Registration is successful";

            return RedirectToAction(nameof(Index));
        }
    }
}
