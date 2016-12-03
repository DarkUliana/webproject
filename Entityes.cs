using System;
using System.Collections.Generic;
using System.Data.Entity;
namespace WebApplication5
{
    public class User
    {
        public int UserId { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }

        public ICollection<Device> Devices { get; set; }
        public User()
        {
            Devices = new List<Device>();
        }
    }

    public class Device
    {
        public int UserId { get; set; }
        public int DeviceId { get; set; }
        public bool Type { get; set; }
        public string Name { get; set; }
        public bool State { get; set; }

        public ICollection<TimeState> TimeStates { get; set; }
        public Device()
        {
            TimeStates = new List<TimeState>();
        }
    }

    public class TimeState
    {
        public int DeviceId { get; set; }
        public DateTime Time;
        public bool State { get; set; }
    }

    public class UserContext : DbContext
    {
        public UserContext() : base("MyUsers") { }
        public DbSet<User> Users { get; set; }
        public DbSet<Device> Devices { get; set; }
        public DbSet<TimeState> TimeStates { get; set; }
    }
}
