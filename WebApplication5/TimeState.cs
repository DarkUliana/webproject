//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication5
{
    using System;
    using System.Collections.Generic;
    
    public partial class TimeState
    {
        public int timestate_id { get; set; }
        public System.DateTime time { get; set; }
        public bool state { get; set; }
        public int device_id { get; set; }
    
        public virtual Device Device { get; set; }
    }
}
