USE [master]
GO
/****** Object:  Database [TechcareerDB]    Script Date: 26.07.2022 12:28:08 ******/
CREATE DATABASE [TechcareerDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechcareerDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TechcareerDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TechcareerDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TechcareerDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TechcareerDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TechcareerDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TechcareerDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TechcareerDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TechcareerDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TechcareerDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TechcareerDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TechcareerDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TechcareerDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TechcareerDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TechcareerDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TechcareerDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TechcareerDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TechcareerDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TechcareerDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TechcareerDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TechcareerDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TechcareerDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TechcareerDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TechcareerDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TechcareerDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TechcareerDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TechcareerDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TechcareerDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TechcareerDB] SET RECOVERY FULL 
GO
ALTER DATABASE [TechcareerDB] SET  MULTI_USER 
GO
ALTER DATABASE [TechcareerDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TechcareerDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TechcareerDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TechcareerDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TechcareerDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TechcareerDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TechcareerDB', N'ON'
GO
ALTER DATABASE [TechcareerDB] SET QUERY_STORE = OFF
GO
USE [TechcareerDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26.07.2022 12:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 26.07.2022 12:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26.07.2022 12:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220724153327_CreatePostsAndUsersTables', N'6.0.7')
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (1, 1, N'sunt aut facere repellat provident occaecati excepturi optio reprehenderit', N'quia et suscipit
suscipit recusandae consequuntur expedita et cum
reprehenderit molestiae ut ut quas totam
nostrum rerum est autem sunt rem eveniet architecto')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (2, 1, N'qui est esse', N'est rerum tempore vitae
sequi sint nihil reprehenderit dolor beatae ea dolores neque
fugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis
qui aperiam non debitis possimus qui neque nisi nulla')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (3, 1, N'ea molestias quasi exercitationem repellat qui ipsa sit aut', N'et iusto sed quo iure
voluptatem occaecati omnis eligendi aut ad
voluptatem doloribus vel accusantium quis pariatur
molestiae porro eius odio et labore et velit aut')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (4, 1, N'eum et est occaecati', N'ullam et saepe reiciendis voluptatem adipisci
sit amet autem assumenda provident rerum culpa
quis hic commodi nesciunt rem tenetur doloremque ipsam iure
quis sunt voluptatem rerum illo velit')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (5, 1, N'nesciunt quas odio', N'repudiandae veniam quaerat sunt sed
alias aut fugiat sit autem sed est
voluptatem omnis possimus esse voluptatibus quis
est aut tenetur dolor neque')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (6, 1, N'dolorem eum magni eos aperiam quia', N'ut aspernatur corporis harum nihil quis provident sequi
mollitia nobis aliquid molestiae
perspiciatis et ea nemo ab reprehenderit accusantium quas
voluptate dolores velit et doloremque molestiae')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (7, 1, N'magnam facilis autem', N'dolore placeat quibusdam ea quo vitae
magni quis enim qui quis quo nemo aut saepe
quidem repellat excepturi ut quia
sunt ut sequi eos ea sed quas')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (8, 1, N'dolorem dolore est ipsam', N'dignissimos aperiam dolorem qui eum
facilis quibusdam animi sint suscipit qui sint possimus cum
quaerat magni maiores excepturi
ipsam ut commodi dolor voluptatum modi aut vitae')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (9, 1, N'nesciunt iure omnis dolorem tempora et accusantium', N'consectetur animi nesciunt iure dolore
enim quia ad
veniam autem ut quam aut nobis
et est aut quod aut provident voluptas autem voluptas')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (10, 1, N'optio molestias id quia eum', N'quo et expedita modi cum officia vel magni
doloribus qui repudiandae
vero nisi sit
quos veniam quod sed accusamus veritatis error')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (11, 2, N'et ea vero quia laudantium autem', N'delectus reiciendis molestiae occaecati non minima eveniet qui voluptatibus
accusamus in eum beatae sit
vel qui neque voluptates ut commodi qui incidunt
ut animi commodi')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (12, 2, N'in quibusdam tempore odit est dolorem', N'itaque id aut magnam
praesentium quia et ea odit et ea voluptas et
sapiente quia nihil amet occaecati quia id voluptatem
incidunt ea est distinctio odio')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (13, 2, N'dolorum ut in voluptas mollitia et saepe quo animi', N'aut dicta possimus sint mollitia voluptas commodi quo doloremque
iste corrupti reiciendis voluptatem eius rerum
sit cumque quod eligendi laborum minima
perferendis recusandae assumenda consectetur porro architecto ipsum ipsam')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (14, 2, N'voluptatem eligendi optio', N'fuga et accusamus dolorum perferendis illo voluptas
non doloremque neque facere
ad qui dolorum molestiae beatae
sed aut voluptas totam sit illum')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (15, 2, N'eveniet quod temporibus', N'reprehenderit quos placeat
velit minima officia dolores impedit repudiandae molestiae nam
voluptas recusandae quis delectus
officiis harum fugiat vitae')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (16, 2, N'sint suscipit perspiciatis velit dolorum rerum ipsa laboriosam odio', N'suscipit nam nisi quo aperiam aut
asperiores eos fugit maiores voluptatibus quia
voluptatem quis ullam qui in alias quia est
consequatur magni mollitia accusamus ea nisi voluptate dicta')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (17, 2, N'fugit voluptas sed molestias voluptatem provident', N'eos voluptas et aut odit natus earum
aspernatur fuga molestiae ullam
deserunt ratione qui eos
qui nihil ratione nemo velit ut aut id quo')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (18, 2, N'voluptate et itaque vero tempora molestiae', N'eveniet quo quis
laborum totam consequatur non dolor
ut et est repudiandae
est voluptatem vel debitis et magnam')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (19, 2, N'adipisci placeat illum aut reiciendis qui', N'illum quis cupiditate provident sit magnam
ea sed aut omnis
veniam maiores ullam consequatur atque
adipisci quo iste expedita sit quos voluptas')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (20, 2, N'doloribus ad provident suscipit at', N'qui consequuntur ducimus possimus quisquam amet similique
suscipit porro ipsam amet
eos veritatis officiis exercitationem vel fugit aut necessitatibus totam
omnis rerum consequatur expedita quidem cumque explicabo')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (21, 3, N'asperiores ea ipsam voluptatibus modi minima quia sint', N'repellat aliquid praesentium dolorem quo
sed totam minus non itaque
nihil labore molestiae sunt dolor eveniet hic recusandae veniam
tempora et tenetur expedita sunt')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (22, 3, N'dolor sint quo a velit explicabo quia nam', N'eos qui et ipsum ipsam suscipit aut
sed omnis non odio
expedita earum mollitia molestiae aut atque rem suscipit
nam impedit esse')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (23, 3, N'maxime id vitae nihil numquam', N'veritatis unde neque eligendi
quae quod architecto quo neque vitae
est illo sit tempora doloremque fugit quod
et et vel beatae sequi ullam sed tenetur perspiciatis')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (24, 3, N'autem hic labore sunt dolores incidunt', N'enim et ex nulla
omnis voluptas quia qui
voluptatem consequatur numquam aliquam sunt
totam recusandae id dignissimos aut sed asperiores deserunt')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (25, 3, N'rem alias distinctio quo quis', N'ullam consequatur ut
omnis quis sit vel consequuntur
ipsa eligendi ipsum molestiae et omnis error nostrum
molestiae illo tempore quia et distinctio')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (26, 3, N'est et quae odit qui non', N'similique esse doloribus nihil accusamus
omnis dolorem fuga consequuntur reprehenderit fugit recusandae temporibus
perspiciatis cum ut laudantium
omnis aut molestiae vel vero')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (27, 3, N'quasi id et eos tenetur aut quo autem', N'eum sed dolores ipsam sint possimus debitis occaecati
debitis qui qui et
ut placeat enim earum aut odit facilis
consequatur suscipit necessitatibus rerum sed inventore temporibus consequatur')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (28, 3, N'delectus ullam et corporis nulla voluptas sequi', N'non et quaerat ex quae ad maiores
maiores recusandae totam aut blanditiis mollitia quas illo
ut voluptatibus voluptatem
similique nostrum eum')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (29, 3, N'iusto eius quod necessitatibus culpa ea', N'odit magnam ut saepe sed non qui
tempora atque nihil
accusamus illum doloribus illo dolor
eligendi repudiandae odit magni similique sed cum maiores')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (30, 3, N'a quo magni similique perferendis', N'alias dolor cumque
impedit blanditiis non eveniet odio maxime
blanditiis amet eius quis tempora quia autem rem
a provident perspiciatis quia')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (31, 4, N'ullam ut quidem id aut vel consequuntur', N'debitis eius sed quibusdam non quis consectetur vitae
impedit ut qui consequatur sed aut in
quidem sit nostrum et maiores adipisci atque
quaerat voluptatem adipisci repudiandae')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (32, 4, N'doloremque illum aliquid sunt', N'deserunt eos nobis asperiores et hic
est debitis repellat molestiae optio
nihil ratione ut eos beatae quibusdam distinctio maiores
earum voluptates et aut adipisci ea maiores voluptas maxime')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (33, 4, N'qui explicabo molestiae dolorem', N'rerum ut et numquam laborum odit est sit
id qui sint in
quasi tenetur tempore aperiam et quaerat qui in
rerum officiis sequi cumque quod')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (34, 4, N'magnam ut rerum iure', N'ea velit perferendis earum ut voluptatem voluptate itaque iusto
totam pariatur in
nemo voluptatem voluptatem autem magni tempora minima in
est distinctio qui assumenda accusamus dignissimos officia nesciunt nobis')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (35, 4, N'id nihil consequatur molestias animi provident', N'nisi error delectus possimus ut eligendi vitae
placeat eos harum cupiditate facilis reprehenderit voluptatem beatae
modi ducimus quo illum voluptas eligendi
et nobis quia fugit')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (36, 4, N'fuga nam accusamus voluptas reiciendis itaque', N'ad mollitia et omnis minus architecto odit
voluptas doloremque maxime aut non ipsa qui alias veniam
blanditiis culpa aut quia nihil cumque facere et occaecati
qui aspernatur quia eaque ut aperiam inventore')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (37, 4, N'provident vel ut sit ratione est', N'debitis et eaque non officia sed nesciunt pariatur vel
voluptatem iste vero et ea
numquam aut expedita ipsum nulla in
voluptates omnis consequatur aut enim officiis in quam qui')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (38, 4, N'explicabo et eos deleniti nostrum ab id repellendus', N'animi esse sit aut sit nesciunt assumenda eum voluptas
quia voluptatibus provident quia necessitatibus ea
rerum repudiandae quia voluptatem delectus fugit aut id quia
ratione optio eos iusto veniam iure')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (39, 4, N'eos dolorem iste accusantium est eaque quam', N'corporis rerum ducimus vel eum accusantium
maxime aspernatur a porro possimus iste omnis
est in deleniti asperiores fuga aut
voluptas sapiente vel dolore minus voluptatem incidunt ex')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (40, 4, N'enim quo cumque', N'ut voluptatum aliquid illo tenetur nemo sequi quo facilis
ipsum rem optio mollitia quas
voluptatem eum voluptas qui
unde omnis voluptatem iure quasi maxime voluptas nam')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (41, 5, N'non est facere', N'molestias id nostrum
excepturi molestiae dolore omnis repellendus quaerat saepe
consectetur iste quaerat tenetur asperiores accusamus ex ut
nam quidem est ducimus sunt debitis saepe')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (42, 5, N'commodi ullam sint et excepturi error explicabo praesentium voluptas', N'odio fugit voluptatum ducimus earum autem est incidunt voluptatem
odit reiciendis aliquam sunt sequi nulla dolorem
non facere repellendus voluptates quia
ratione harum vitae ut')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (43, 5, N'eligendi iste nostrum consequuntur adipisci praesentium sit beatae perferendis', N'similique fugit est
illum et dolorum harum et voluptate eaque quidem
exercitationem quos nam commodi possimus cum odio nihil nulla
dolorum exercitationem magnam ex et a et distinctio debitis')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (44, 5, N'optio dolor molestias sit', N'temporibus est consectetur dolore
et libero debitis vel velit laboriosam quia
ipsum quibusdam qui itaque fuga rem aut
ea et iure quam sed maxime ut distinctio quae')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (45, 5, N'ut numquam possimus omnis eius suscipit laudantium iure', N'est natus reiciendis nihil possimus aut provident
ex et dolor
repellat pariatur est
nobis rerum repellendus dolorem autem')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (46, 5, N'aut quo modi neque nostrum ducimus', N'voluptatem quisquam iste
voluptatibus natus officiis facilis dolorem
quis quas ipsam
vel et voluptatum in aliquid')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (47, 5, N'quibusdam cumque rem aut deserunt', N'voluptatem assumenda ut qui ut cupiditate aut impedit veniam
occaecati nemo illum voluptatem laudantium
molestiae beatae rerum ea iure soluta nostrum
eligendi et voluptate')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (48, 5, N'ut voluptatem illum ea doloribus itaque eos', N'voluptates quo voluptatem facilis iure occaecati
vel assumenda rerum officia et
illum perspiciatis ab deleniti
laudantium repellat ad ut et autem reprehenderit')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (49, 5, N'laborum non sunt aut ut assumenda perspiciatis voluptas', N'inventore ab sint
natus fugit id nulla sequi architecto nihil quaerat
eos tenetur in in eum veritatis non
quibusdam officiis aspernatur cumque aut commodi aut')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (50, 5, N'repellendus qui recusandae incidunt voluptates tenetur qui omnis exercitationem', N'error suscipit maxime adipisci consequuntur recusandae
voluptas eligendi et est et voluptates
quia distinctio ab amet quaerat molestiae et vitae
adipisci impedit sequi nesciunt quis consectetur')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (51, 6, N'soluta aliquam aperiam consequatur illo quis voluptas', N'sunt dolores aut doloribus
dolore doloribus voluptates tempora et
doloremque et quo
cum asperiores sit consectetur dolorem')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (52, 6, N'qui enim et consequuntur quia animi quis voluptate quibusdam', N'iusto est quibusdam fuga quas quaerat molestias
a enim ut sit accusamus enim
temporibus iusto accusantium provident architecto
soluta esse reprehenderit qui laborum')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (53, 6, N'ut quo aut ducimus alias', N'minima harum praesentium eum rerum illo dolore
quasi exercitationem rerum nam
porro quis neque quo
consequatur minus dolor quidem veritatis sunt non explicabo similique')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (54, 6, N'sit asperiores ipsam eveniet odio non quia', N'totam corporis dignissimos
vitae dolorem ut occaecati accusamus
ex velit deserunt
et exercitationem vero incidunt corrupti mollitia')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (55, 6, N'sit vel voluptatem et non libero', N'debitis excepturi ea perferendis harum libero optio
eos accusamus cum fuga ut sapiente repudiandae
et ut incidunt omnis molestiae
nihil ut eum odit')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (56, 6, N'qui et at rerum necessitatibus', N'aut est omnis dolores
neque rerum quod ea rerum velit pariatur beatae excepturi
et provident voluptas corrupti
corporis harum reprehenderit dolores eligendi')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (57, 6, N'sed ab est est', N'at pariatur consequuntur earum quidem
quo est laudantium soluta voluptatem
qui ullam et est
et cum voluptas voluptatum repellat est')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (58, 6, N'voluptatum itaque dolores nisi et quasi', N'veniam voluptatum quae adipisci id
et id quia eos ad et dolorem
aliquam quo nisi sunt eos impedit error
ad similique veniam')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (59, 6, N'qui commodi dolor at maiores et quis id accusantium', N'perspiciatis et quam ea autem temporibus non voluptatibus qui
beatae a earum officia nesciunt dolores suscipit voluptas et
animi doloribus cum rerum quas et magni
et hic ut ut commodi expedita sunt')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (60, 6, N'consequatur placeat omnis quisquam quia reprehenderit fugit veritatis facere', N'asperiores sunt ab assumenda cumque modi velit
qui esse omnis
voluptate et fuga perferendis voluptas
illo ratione amet aut et omnis')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (61, 7, N'voluptatem doloribus consectetur est ut ducimus', N'ab nemo optio odio
delectus tenetur corporis similique nobis repellendus rerum omnis facilis
vero blanditiis debitis in nesciunt doloribus dicta dolores
magnam minus velit')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (62, 7, N'beatae enim quia vel', N'enim aspernatur illo distinctio quae praesentium
beatae alias amet delectus qui voluptate distinctio
odit sint accusantium autem omnis
quo molestiae omnis ea eveniet optio')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (63, 7, N'voluptas blanditiis repellendus animi ducimus error sapiente et suscipit', N'enim adipisci aspernatur nemo
numquam omnis facere dolorem dolor ex quis temporibus incidunt
ab delectus culpa quo reprehenderit blanditiis asperiores
accusantium ut quam in voluptatibus voluptas ipsam dicta')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (64, 7, N'et fugit quas eum in in aperiam quod', N'id velit blanditiis
eum ea voluptatem
molestiae sint occaecati est eos perspiciatis
incidunt a error provident eaque aut aut qui')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (65, 7, N'consequatur id enim sunt et et', N'voluptatibus ex esse
sint explicabo est aliquid cumque adipisci fuga repellat labore
molestiae corrupti ex saepe at asperiores et perferendis
natus id esse incidunt pariatur')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (66, 7, N'repudiandae ea animi iusto', N'officia veritatis tenetur vero qui itaque
sint non ratione
sed et ut asperiores iusto eos molestiae nostrum
veritatis quibusdam et nemo iusto saepe')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (67, 7, N'aliquid eos sed fuga est maxime repellendus', N'reprehenderit id nostrum
voluptas doloremque pariatur sint et accusantium quia quod aspernatur
et fugiat amet
non sapiente et consequatur necessitatibus molestiae')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (68, 7, N'odio quis facere architecto reiciendis optio', N'magnam molestiae perferendis quisquam
qui cum reiciendis
quaerat animi amet hic inventore
ea quia deleniti quidem saepe porro velit')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (69, 7, N'fugiat quod pariatur odit minima', N'officiis error culpa consequatur modi asperiores et
dolorum assumenda voluptas et vel qui aut vel rerum
voluptatum quisquam perspiciatis quia rerum consequatur totam quas
sequi commodi repudiandae asperiores et saepe a')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (70, 7, N'voluptatem laborum magni', N'sunt repellendus quae
est asperiores aut deleniti esse accusamus repellendus quia aut
quia dolorem unde
eum tempora esse dolore')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (71, 8, N'et iusto veniam et illum aut fuga', N'occaecati a doloribus
iste saepe consectetur placeat eum voluptate dolorem et
qui quo quia voluptas
rerum ut id enim velit est perferendis')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (72, 8, N'sint hic doloribus consequatur eos non id', N'quam occaecati qui deleniti consectetur
consequatur aut facere quas exercitationem aliquam hic voluptas
neque id sunt ut aut accusamus
sunt consectetur expedita inventore velit')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (73, 8, N'consequuntur deleniti eos quia temporibus ab aliquid at', N'voluptatem cumque tenetur consequatur expedita ipsum nemo quia explicabo
aut eum minima consequatur
tempore cumque quae est et
et in consequuntur voluptatem voluptates aut')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (74, 8, N'enim unde ratione doloribus quas enim ut sit sapiente', N'odit qui et et necessitatibus sint veniam
mollitia amet doloremque molestiae commodi similique magnam et quam
blanditiis est itaque
quo et tenetur ratione occaecati molestiae tempora')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (75, 8, N'dignissimos eum dolor ut enim et delectus in', N'commodi non non omnis et voluptas sit
autem aut nobis magnam et sapiente voluptatem
et laborum repellat qui delectus facilis temporibus
rerum amet et nemo voluptate expedita adipisci error dolorem')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (76, 8, N'doloremque officiis ad et non perferendis', N'ut animi facere
totam iusto tempore
molestiae eum aut et dolorem aperiam
quaerat recusandae totam odio')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (77, 8, N'necessitatibus quasi exercitationem odio', N'modi ut in nulla repudiandae dolorum nostrum eos
aut consequatur omnis
ut incidunt est omnis iste et quam
voluptates sapiente aliquam asperiores nobis amet corrupti repudiandae provident')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (78, 8, N'quam voluptatibus rerum veritatis', N'nobis facilis odit tempore cupiditate quia
assumenda doloribus rerum qui ea
illum et qui totam
aut veniam repellendus')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (79, 8, N'pariatur consequatur quia magnam autem omnis non amet', N'libero accusantium et et facere incidunt sit dolorem
non excepturi qui quia sed laudantium
quisquam molestiae ducimus est
officiis esse molestiae iste et quos')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (80, 8, N'labore in ex et explicabo corporis aut quas', N'ex quod dolorem ea eum iure qui provident amet
quia qui facere excepturi et repudiandae
asperiores molestias provident
minus incidunt vero fugit rerum sint sunt excepturi provident')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (81, 9, N'tempora rem veritatis voluptas quo dolores vero', N'facere qui nesciunt est voluptatum voluptatem nisi
sequi eligendi necessitatibus ea at rerum itaque
harum non ratione velit laboriosam quis consequuntur
ex officiis minima doloremque voluptas ut aut')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (82, 9, N'laudantium voluptate suscipit sunt enim enim', N'ut libero sit aut totam inventore sunt
porro sint qui sunt molestiae
consequatur cupiditate qui iste ducimus adipisci
dolor enim assumenda soluta laboriosam amet iste delectus hic')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (83, 9, N'odit et voluptates doloribus alias odio et', N'est molestiae facilis quis tempora numquam nihil qui
voluptate sapiente consequatur est qui
necessitatibus autem aut ipsa aperiam modi dolore numquam
reprehenderit eius rem quibusdam')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (84, 9, N'optio ipsam molestias necessitatibus occaecati facilis veritatis dolores aut', N'sint molestiae magni a et quos
eaque et quasi
ut rerum debitis similique veniam
recusandae dignissimos dolor incidunt consequatur odio')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (85, 9, N'dolore veritatis porro provident adipisci blanditiis et sunt', N'similique sed nisi voluptas iusto omnis
mollitia et quo
assumenda suscipit officia magnam sint sed tempora
enim provident pariatur praesentium atque animi amet ratione')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (86, 9, N'placeat quia et porro iste', N'quasi excepturi consequatur iste autem temporibus sed molestiae beatae
et quaerat et esse ut
voluptatem occaecati et vel explicabo autem
asperiores pariatur deserunt optio')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (87, 9, N'nostrum quis quasi placeat', N'eos et molestiae
nesciunt ut a
dolores perspiciatis repellendus repellat aliquid
magnam sint rem ipsum est')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (88, 9, N'sapiente omnis fugit eos', N'consequatur omnis est praesentium
ducimus non iste
neque hic deserunt
voluptatibus veniam cum et rerum sed')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (89, 9, N'sint soluta et vel magnam aut ut sed qui', N'repellat aut aperiam totam temporibus autem et
architecto magnam ut
consequatur qui cupiditate rerum quia soluta dignissimos nihil iure
tempore quas est')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (90, 9, N'ad iusto omnis odit dolor voluptatibus', N'minus omnis soluta quia
qui sed adipisci voluptates illum ipsam voluptatem
eligendi officia ut in
eos soluta similique molestias praesentium blanditiis')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (91, 10, N'aut amet sed', N'libero voluptate eveniet aperiam sed
sunt placeat suscipit molestias
similique fugit nam natus
expedita consequatur consequatur dolores quia eos et placeat')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (92, 10, N'ratione ex tenetur perferendis', N'aut et excepturi dicta laudantium sint rerum nihil
laudantium et at
a neque minima officia et similique libero et
commodi voluptate qui')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (93, 10, N'beatae soluta recusandae', N'dolorem quibusdam ducimus consequuntur dicta aut quo laboriosam
voluptatem quis enim recusandae ut sed sunt
nostrum est odit totam
sit error sed sunt eveniet provident qui nulla')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (94, 10, N'qui qui voluptates illo iste minima', N'aspernatur expedita soluta quo ab ut similique
expedita dolores amet
sed temporibus distinctio magnam saepe deleniti
omnis facilis nam ipsum natus sint similique omnis')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (95, 10, N'id minus libero illum nam ad officiis', N'earum voluptatem facere provident blanditiis velit laboriosam
pariatur accusamus odio saepe
cumque dolor qui a dicta ab doloribus consequatur omnis
corporis cupiditate eaque assumenda ad nesciunt')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (96, 10, N'quaerat velit veniam amet cupiditate aut numquam ut sequi', N'in non odio excepturi sint eum
labore voluptates vitae quia qui et
inventore itaque rerum
veniam non exercitationem delectus aut')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (97, 10, N'quas fugiat ut perspiciatis vero provident', N'eum non blanditiis soluta porro quibusdam voluptas
vel voluptatem qui placeat dolores qui velit aut
vel inventore aut cumque culpa explicabo aliquid at
perspiciatis est et voluptatem dignissimos dolor itaque sit nam')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (98, 10, N'laboriosam dolor voluptates', N'doloremque ex facilis sit sint culpa
soluta assumenda eligendi non ut eius
sequi ducimus vel quasi
veritatis est dolores')
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (99, 10, N'temporibus sit alias delectus eligendi possimus magni', N'quo deleniti praesentium dicta non quod
aut est molestias
molestias et officia quis nihil
itaque dolorem quia')
GO
INSERT [dbo].[Posts] ([Id], [UserId], [Title], [Body]) VALUES (100, 10, N'at nam consequatur ea labore ea harum', N'cupiditate quo est a modi nesciunt soluta
ipsa voluptas error itaque dicta in
autem qui minus magnam et distinctio eum
accusamus ratione error aut')
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (1, N'sahin', N'123')
INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (2, N'ali', N'123')
INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (3, N'murat', N'123')
INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (4, N'kemal', N'123')
INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (5, N'mehmet', N'123')
INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (6, N'sedat', N'123')
INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (7, N'mert', N'123')
INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (8, N'umut', N'123')
INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (9, N'ayşe', N'123')
INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (10, N'fatma', N'123')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [TechcareerDB] SET  READ_WRITE 
GO
