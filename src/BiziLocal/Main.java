package BiziLocal;

import com.sun.jna.platform.win32.WinDef;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

import com.sun.jna.platform.win32.WinDef;

import java.util.Date;
import java.text.SimpleDateFormat;

import java.io.*;
import java.util.*;
import java.util.stream.Collectors;
//import org.jutils.jprocesses.JProcesses;
//import org.jutils.jprocesses.model.ProcessInfo;


public class Main {
    public static void main(String[] args) {
//        List<String> winNameList = EnumAllWindowNames.getAllWindowNames();
//        List<String> backgroundApps = Arrays.asList("Microsoft Text Input Application", "Microsoft Store", "Settings");
//        winNameList = cleanUp(win-`++ameList, backgroundApps);
//        System.out.println(winNameList);
        String listCommand = "powershell -command \"get-Process cmd | format-table mainwindowtitle\"";
        ArrayList<String> EnginesListFromTaskManager = new ArrayList<String>();
        try
        {
            String line;


            // since line length for powershell output is 79
            int outLen = 79;



            Process p = Runtime.getRuntime().exec(listCommand);
            BufferedReader input = new BufferedReader(new InputStreamReader(p.getInputStream()));
            line = input.readLine();
            System.out.println("line: " + line + "\t" + line.length());




            int i = 0;

            /*
             I used this outLen > 0 condition to make sure that this method will close automatically
             in case of no running CMD applications and you running this from your IDE's (Eclipse, Netbeans , ......)
             the powershell will not stopped so i used it. */
            while(line != null && outLen > 0)
            {
                System.out.println("line: " + line + "\t" + line.length());

                line = input.readLine().trim().toLowerCase();
                outLen = line.length();

                EnginesListFromTaskManager.add(i, line);

                System.out.println(EnginesListFromTaskManager.get(i));
                // EnginesListFromTaskManager[i]=(String)input.readLine().trim();
                // System.out.println("EnginesListFromTaskManager"+ EnginesListFromTaskManager[i]);
                i++;
            }
            input.close();
        } catch(Exception err) {
            err.printStackTrace();
        }

        String[] ListFromTaskManager = new String[EnginesListFromTaskManager.size()];
        ListFromTaskManager = EnginesListFromTaskManager.toArray(ListFromTaskManager);
        System.out.println(Arrays.toString(ListFromTaskManager));
    }


    public static List<String> cleanUp(List<String> inputS, List<String> backgroundS) {
        List<String> outputS = new ArrayList<String>();
        for (String inputApp : inputS) {
            //Check if there is a dash to truncate
            if (inputApp.lastIndexOf('-') != -1) {
                inputApp = inputApp.substring(inputApp.lastIndexOf('-') + 2);
            }

            // Check if app is a background app
            boolean addToList = true;
            for (String backgroundApp : backgroundS) {
                if (inputApp.equals(backgroundApp)) {
                    addToList = false;
                    break;
                }
            }
            if (addToList) {
                outputS.add(inputApp);
            }
        }

        outputS = outputS.stream().distinct().collect(Collectors.toList()); // Remove duplicates
        return outputS;
    }

    public static String cleanUp(String appTitle) {
        if (appTitle.lastIndexOf('-') != -1) {
            appTitle = appTitle.substring(appTitle.lastIndexOf('-') + 2);
        }
        if(appTitle.equals("Program Manager")) {
            appTitle = "null";
        }
        return appTitle;
    }


    private static String getFocusedWindowName() {
        WinDef.HWND hndl = com.sun.jna.platform.win32.User32.INSTANCE.GetForegroundWindow();
        char[] buffer = new char[1000];
        com.sun.jna.platform.win32.User32.INSTANCE.GetWindowText(hndl, buffer, 100);
        String title = "";

        int i = 0;
        while ((int) buffer[i] != 0) {
            title += buffer[i];
            i++;
        }

        title = cleanUp(title);

        return title;
    }
}
