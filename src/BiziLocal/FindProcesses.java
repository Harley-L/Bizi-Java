package BiziLocal;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class FindProcesses {
    public static String[] currentMacApps() {
        String[] application = new String[0];

        Runtime runtime = Runtime.getRuntime();
        // AppleScript Commands
        String applescript =
                "on GetApplicationCorrespondingToProcess(process_name)\n" +
                "\ttell application \"System Events\"\n" +
                "\t\tset process_bid to get the bundle identifier of process process_name\n" +
                "\t\tset application_name to file of (application processes where bundle identifier is process_bid)\n" +
                "\tend tell\n" +
                "\treturn application_name\n" +
                "end GetApplicationCorrespondingToProcess\n" +
                "\n" +
                "tell application \"System Events\"\n" +
                "\tset listOfProcesses to (name of every process where background only is false)\n" +
                "end tell\n" +
                "set Final to \"\"\n" +
                "repeat with theItem in listOfProcesses\n" +
                "\tset Final to Final & (GetApplicationCorrespondingToProcess(theItem) as string) & \",\"\n" +
                "end repeat\n" +
                "do shell script \"echo \" & Final";
        String[] args = { "osascript", "-e", applescript };

        try {
            Process process = runtime.exec(args);

            BufferedReader stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String all_applications = stdInput.readLine();
            application = all_applications.split(",");
            // Get real application name
            for(int i = 0; i<application.length; i++) {
                int length = application[i].length();
                application[i] = application[i].substring(0,length-1);
                int index = application[i].lastIndexOf(":");
                System.out.println(index + " " + length);
                application[i] = application[i].substring(index+1,length-5);
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        return application;
    }
}