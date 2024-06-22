using System;
using System.Threading.Tasks;
using Core.Business;
using Core.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore.Annotations;

namespace WebApi.Controllers
{
    /// <summary>
    /// Controller for sample API
    /// </summary>
    [Authorize("Bearer")]
    [Authorize(AuthenticationSchemes = "CustomAuth")]
    [Route("[controller]")]
    [Tags("Auth")]
    [ApiController]
    public class SampleApiController: ControllerBase
    {
        private readonly ISampleApiBusiness _sampleApiBusiness;

        /// <summary>
        /// Construtor `SampleApiController`.
        /// </summary>
        /// <param name="sampleApiBusiness"</param>
        public SampleApiController(ISampleApiBusiness sampleApiBusiness) { 
            _sampleApiBusiness = sampleApiBusiness;
        }

        /// <summary>
        /// SignIn
        /// </summary>
        /// <remarks>
        /// This dont method allow anonymous.
        /// 
        /// You have to call this method with a token in the header.
        /// </remarks>
        [HttpGet("GetSampleListAsync")]
        [SwaggerResponse(200, "Informações", typeof(SampleData))]
        [SwaggerResponse(400, "Erro", typeof(string))]
        public async Task<IActionResult> GetSampleListAsync()
        {
            try
            {
                return Ok(await _sampleApiBusiness.GetSampleList());
            }
            catch (Exception ex)
            {
                return BadRequest($"SampleApiController | GetSampleListAsync | {ex.Message}");
            }
        }

    }
}
