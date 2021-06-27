package BiziLocal;

import java.io.*;
import java.util.Arrays;
import java.util.Scanner;

public class FindProcesses {
    public static String[][] currentMacApps() throws FileNotFoundException {
        String[] application = new String[0];
        String[] raw_applications = new String[0];
        String path_to_txt = System.getProperty("user.dir");
        path_to_txt = path_to_txt + "/AppleScript/FindAllApplications.txt";
        String applescript = new Scanner(new File(path_to_txt)).useDelimiter("\\Z").next();
        Runtime runtime = Runtime.getRuntime();
        String[] args = { "osascript", "-e", applescript };

        try {
            Process process = runtime.exec(args);

            BufferedReader stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String all_applications = stdInput.readLine();
            application = all_applications.split(",");
            raw_applications = application.clone();

            // Get real application name
            for(int i = 0; i<application.length; i++) {
                application[i] = getApplicationName(application[i]);
                raw_applications[i] = getRawApplicationName(raw_applications[i]);
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        String[][] returntype = new String[2][0];
        returntype[0] = application;
        returntype[1] = raw_applications;
        return returntype;
    }

    public static String[] currentForegroundMacApp() throws IOException {
        String path_to_txt = System.getProperty("user.dir");
        path_to_txt = path_to_txt + "/AppleScript/ForegroundApp.txt";
        String applescript = new Scanner(new File(path_to_txt)).useDelimiter("\\Z").next();

        String[] args = { "osascript", "-e", applescript };
        Runtime runtime = Runtime.getRuntime();
        Process process = runtime.exec(args);
        BufferedReader stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));
        String application = stdInput.readLine();

        String[] returntype = new String[2];
        returntype[0] = getApplicationName(application);
        returntype[1] = getRawApplicationName(application);
        return returntype;
    }

    public static void findIconMac(String application) throws IOException {
        /*
        Examples of input:
        Macintosh HD:System:Library:CoreServices:Finder.app:
        Macintosh HD:Applications:IntelliJ IDEA CE.app:
        Macintosh HD:System:Applications:Utilities:Script Editor.app:
        Macintosh HD:Applications:Google Chrome.app:
        Macintosh HD:System:Applications:Utilities:Terminal.app:
         */
        String path_to_project = System.getProperty("user.dir");
        String path_to_extract = path_to_project.replaceAll("/", ":");
        path_to_extract = "Macintosh HD" + path_to_extract;

        String path_to_txt1 = path_to_project + "/AppleScript/FindIconGivenApp1.txt";
        String applescript1 = new Scanner(new File(path_to_txt1)).useDelimiter("\\Z").next();
        String path_to_txt2 = path_to_project + "/AppleScript/FindIconGivenApp2.txt";
        String applescript2 = new Scanner(new File(path_to_txt2)).useDelimiter("\\Z").next();

        String applescript = "set theApp to alias \"" + application + "\"\n";
        applescript = applescript + applescript1 + "\n" +
                "set theOutputFolder to makeFolder(\"Extracted Icons\", \"" + path_to_extract + "\")\n" +
                applescript2;
        String[] args = { "osascript", "-e", applescript };
        Runtime runtime = Runtime.getRuntime();
        runtime.exec(args);
    }

    private static String getApplicationName(String path_to_application) {
        int length = path_to_application.length();

        // Special Cases
        if(path_to_application.endsWith("Contents:Home:bin:java")) {
            return "Minecraft";
        }

        path_to_application = path_to_application.substring(0,length-1);
        int index = path_to_application.lastIndexOf(":");
        return path_to_application.substring(index+1,length-5);
    }

    private static String getRawApplicationName(String path_to_application) {
        if(path_to_application.endsWith("Contents:Home:bin:java")) {
            return "Macintosh HD:Applications:Minecraft.app:";
        }
        return path_to_application;
    }
}
