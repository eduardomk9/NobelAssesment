var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

// Sirva arquivos est�ticos da pasta wwwroot
app.UseDefaultFiles();
app.UseStaticFiles();

app.Run();