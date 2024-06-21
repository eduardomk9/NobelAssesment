var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

// Sirva arquivos estáticos da pasta wwwroot
app.UseDefaultFiles();
app.UseStaticFiles();

app.Run();