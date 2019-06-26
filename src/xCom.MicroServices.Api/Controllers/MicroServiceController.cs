using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;

namespace xCom.MicroServices.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MicroServiceController : ControllerBase
    {
        public MicroServiceController()
        {
        }

        [HttpGet]
        public ActionResult<IEnumerable<string>> Get()
        {
            return new string[] { "value1", "value2" };
        }
    }
}
