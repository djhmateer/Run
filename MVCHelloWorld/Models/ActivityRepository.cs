using System.Linq;

namespace MVCHelloWorld.Models
{
    public class ActivityRepository
    {
        runDataContext dc = new runDataContext();

        public IQueryable<Activity> GetActivities()
        {
            return dc.Activities;
        }

        public IQueryable<Activity> GetActivitiesByPerson(int personId)         
        {
            var activites = from a in dc.Activities
                            where a.personid == personId
                            select a;
            return activites;
        }


        public Activity GetActivity(int id)
        {
            //var activity = (from a in dc.Activities
            //                where a.activityid == id
            //                select a).SingleOrDefault();

            return dc.Activities.SingleOrDefault(a => a.activityid == id);

            //return activity;
        }


        public IQueryable<Person> GetPeople()
        {
            return dc.Persons;
        }

    }
}