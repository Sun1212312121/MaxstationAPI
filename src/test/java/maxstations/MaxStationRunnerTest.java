package maxstations;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


import static org.junit.jupiter.api.Assertions.assertEquals;

public class MaxStationRunnerTest {

    @Test
    public void TestAgencies() {
        Results results = Runner.path("classpath:maxstations")
                .tags("~@ignore")
                .outputCucumberJson(true)
                .parallel(5);
        GenerateReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

    public static void GenerateReport(String outputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(outputPath), new String[]{"json"}, true);
        final List<String> jsonPaths = new ArrayList(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "maxstation");
        config.addClassifications("Environment", System.getProperty("karate.env"));
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
}
