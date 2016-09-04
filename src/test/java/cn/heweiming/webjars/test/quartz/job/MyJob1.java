package cn.heweiming.webjars.test.quartz.job;

import java.util.Date;

import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class MyJob1 implements Job {

    private String username;

    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        JobDataMap jobDataMap = context.getJobDetail().getJobDataMap();
        System.out.println("jobDataMap  ==>  " + jobDataMap.getWrappedMap());
        JobDataMap mergedJobDataMap = context.getMergedJobDataMap();
        System.out.println("mergedJobDataMap  ==>  " + mergedJobDataMap.getWrappedMap());
        System.out.println(
                "Hello " + username + String.format("  %1$tF %1$tT.%1$tL", new Date()));
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
