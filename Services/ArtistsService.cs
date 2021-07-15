using System.Collections.Generic;
using Artists.Data;
using Artists.Models;

namespace Artists.Services
{
  public class ArtistsService
  {
    private readonly ArtistsRepository _artistsRepo;
    public ArtistsService(ArtistsRepository artistsRepo)
    {
      _artistsRepo = artistsRepo;
    }
    public List<Artist> GetAll()
    {
      return _artistsRepo.GetAll();
    }
  }
}