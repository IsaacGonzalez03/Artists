using System;

namespace Artists.Models
{
  public class Artist
  {
    public Artist(int id, string name, int birthYear, int? deathYear)
    {
      Id = id;
      Name = name;
      BirthYear = birthYear;
      DeathYear = deathYear;
    }

    public int Id { get; set; }
    public string Name { get; set; }
    public int BirthYear { get; set; }
    public int? DeathYear { get; set; }
    public bool IsDead { get => DeathYear > 0; }

    public DateTime CreatedAt { get; set; }

    public DateTime UpdatedAt { get; set; }
  }
}