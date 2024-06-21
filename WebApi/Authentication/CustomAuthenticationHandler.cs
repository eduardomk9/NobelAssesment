using Microsoft.AspNetCore.Authentication;
using Microsoft.Extensions.Options;
using System.Security.Claims;
using System.Text.Encodings.Web;

namespace WebAPI.Authentication
{
    public class CustomAuthenticationHandler : AuthenticationHandler<CustomAuthenticationSchemeOptions>
    {
        private readonly IConfiguration _configuration;
        private readonly IOptionsMonitor<CustomAuthenticationSchemeOptions> _options;
        private readonly ILoggerFactory _logger;
        private readonly UrlEncoder _encoder;

        public CustomAuthenticationHandler(
            IConfiguration configuration,
            IOptionsMonitor<CustomAuthenticationSchemeOptions> options,
            ILoggerFactory logger,
            UrlEncoder encoder,
            ISystemClock clock) : base(options, logger, encoder, clock)
        {
            _configuration = configuration;
            _options = options;
            _logger = logger;
            _encoder = encoder;
        }

        protected override Task<AuthenticateResult> HandleAuthenticateAsync()
        {
            if (!Request.Headers.TryGetValue("Token", out var token))
            {
                return Task.FromResult(AuthenticateResult.Fail("Token not found in header."));
            }

            if (TokenIsValid(token))
            {
                var claimsIdentity = new ClaimsIdentity(Scheme.Name);
                var claimsPrincipal = new ClaimsPrincipal(claimsIdentity);
                var ticket = new AuthenticationTicket(claimsPrincipal, Scheme.Name);

                return Task.FromResult(AuthenticateResult.Success(ticket));
            }
            else
            {
                return Task.FromResult(AuthenticateResult.Fail("Token is not valid."));
            }
        }

        private bool TokenIsValid(string? token)
        {
            return token?.Equals(_configuration["Settings:Token"]) ?? false;
        }
    }
}
