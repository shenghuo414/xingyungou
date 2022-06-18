using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class OrderService
    {
        public static int Insert(Order info)
        {
            using(ZYL1Entities db=new ZYL1Entities())
            {
                db.Orders.Add(info);
                var r = db.SaveChanges();
                if (r > 0)
                {
                    return r;
                }
                return 0;
            }
        }
    }
}
