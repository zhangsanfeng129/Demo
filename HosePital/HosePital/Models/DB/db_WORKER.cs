//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace HosePital.Models.DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class db_WORKER
    {
        public db_WORKER()
        {
            this.db_INPUT = new HashSet<db_INPUT>();
        }
    
        public int WorkerID { get; set; }
        public string WorkerName { get; set; }
        public string WorkerSex { get; set; }
        public string WorkerIDNumber { get; set; }
        public string WorkerPosition { get; set; }
        public decimal WorkerWage { get; set; }
        public string WorkerPassword { get; set; }
        public string WorkerImage { get; set; }
        public string WorkerPhone { get; set; }
    
        public virtual ICollection<db_INPUT> db_INPUT { get; set; }
    }
}
