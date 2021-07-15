using System.Collections.Generic;
using System.Data;
using System.Linq;
using Artists.Models;
using Dapper;

namespace Artists.Data
{
  public class ArtistsRepository
  {
    private readonly IDbConnection _db;
    //SOLI(D) PRINCIPLE
    //DEPENDANCY CONNECTION ---VVV---
    public ArtistsRepository(IDbConnection db)
    {
      _db = db;
    }
    public List<Artist> GetAll()
    {
      var sql = "SELECT * FROM artists";
      return _db.Query<Artist>(sql).ToList();
    }
  }
}