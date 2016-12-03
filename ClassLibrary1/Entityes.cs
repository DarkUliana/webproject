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

        public List<Device> Devices { get; set; }
       
    }

    public class Device
    {
        public int UserId { get; set; }
        public int DeviceId { get; set; }
        public bool Type { get; set; }
        public string Name { get; set; }
        public bool State { get; set; }

        public List<TimeState> TimeStates { get; set; }

        public User user { get; set; }
 
    }

    public class TimeState
    {
        public int DeviceId { get; set; }
        public DateTime Time;
        public bool State { get; set; }

        public Device device { get; set; }
    }

    public class UserContext : DbContext
    {
        public UserContext() : base("users") { }
        public DbSet<User> Users { get; set; }
        public DbSet<Device> Devices { get; set; }
        public DbSet<TimeState> TimeStates { get; set; }
    }
}
