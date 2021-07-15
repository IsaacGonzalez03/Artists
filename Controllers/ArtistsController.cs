using System.Collections.Generic;
using Artists.Models;
using Artists.Services;
using Microsoft.AspNetCore.Mvc;

namespace Artists.Controllers
{
  [ApiController]
  [Route("api/[Controller]")]
  public class ArtistsController : ControllerBase
  {
    private readonly ArtistsService _ase;
    public ArtistsController(ArtistsService artistsService)
    {
      _ase = artistsService;
    }
    [HttpGet]
    public ActionResult<List<Artist>> GetArtists()
    {
      try
      {
        var artists = _ase.GetAll();
        return Ok(artists);
      }
      catch (System.Exception e)
      {
        return BadRequest(e.Message);
      }
    }
  }
}