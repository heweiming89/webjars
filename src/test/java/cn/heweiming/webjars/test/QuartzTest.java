package cn.heweiming.webjars.test;

import static org.quartz.JobBuilder.newJob;
import static org.quartz.SimpleScheduleBuilder.simpleSchedule;
import static org.quartz.TriggerBuilder.newTrigger;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.quartz.DateBuilder;
import org.quartz.JobBuilder;
import org.quartz.JobDataMap;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.SimpleScheduleBuilder;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;
import org.quartz.impl.calendar.HolidayCalendar;
import org.testng.annotations.Test;

import cn.heweiming.webjars.test.quartz.job.MyJob1;

public class QuartzTest {

    public static void main(String[] args) throws SchedulerException {
        test01();
    }

    public static void testBasic() throws SchedulerException {
        StdSchedulerFactory schedulerFactory = new StdSchedulerFactory();
        Scheduler scheduler = schedulerFactory.getScheduler();

        // define the job and tie it to our MyJob class
        JobDetail job = newJob(MyJob1.class).withIdentity("job1", "group1").build();

        // Trigger the job to run now, and then repeat every 2 seconds
        Trigger trigger = newTrigger().withIdentity("trigger1", "group1").startNow()
                .withSchedule(simpleSchedule().withIntervalInSeconds(2).repeatForever())
                .build();

        // Tell quartz to schedule the job using our trigger
        Date date = scheduler.scheduleJob(job, trigger);
        System.out.println(date);
    }

    public static void test01() {
        SchedulerFactory schedulerFactory = new StdSchedulerFactory();
        Scheduler scheduler = null;
        Date startDate = DateBuilder.nextGivenSecondDate(null, 7);
        System.out.println(startDate);
        Map<Object, Object> dataMap = new HashMap<>();
        dataMap.put("username", "测试员");
        JobDataMap jobDataMap = new JobDataMap(dataMap);

        try {
            scheduler = schedulerFactory.getScheduler();
            JobDetail jobDetail = JobBuilder.newJob(MyJob1.class)
                    .withIdentity("job1", "jgroup1").setJobData(jobDataMap).build();

            Trigger trigger = TriggerBuilder.newTrigger()
                    .withIdentity("trigger1", "jgroup1")
                    .startAt(startDate)
//                    .startNow()
                    .withSchedule(SimpleScheduleBuilder
                            .simpleSchedule().withIntervalInSeconds(2)
                            .withRepeatCount(1)
//                            .repeatForever()
                            )
                    .build();
            scheduler.start();
            Date date = scheduler.scheduleJob(jobDetail, trigger);
            System.out.println(date);
//            Thread.sleep(30000);
//            scheduler.shutdown();

        } catch (SchedulerException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }/* catch (InterruptedException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }*/

    }

    @Test
    public void testHolidayCalendar() {
        HolidayCalendar holidayCalendar = new HolidayCalendar();
        // holidayCalendar.addExcludedDate(excludedDate);
        Date date = DateBuilder.dateOf(0, 0, 0);
        System.out.println(date);
    }

}
