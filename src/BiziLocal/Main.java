package BiziLocal;

import org.jutils.jprocesses.JProcesses;
import org.jutils.jprocesses.model.ProcessInfo;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class Main {

    public static void main(String[] args) throws IOException {
//        FindProcesses hi = new FindProcesses();
//        new User("Michael",  "Barrack", "barrackm@hotmail.com", "test123");
//        ProcessHandle.allProcesses().forEach(process -> System.out.println(processDetails(process)));
        System.out.println(Arrays.toString(FindProcesses.currentMacApps()));

    }
//    private static String processDetails(ProcessHandle process) {
//        return String.format("%8d %8s %10s %26s %-40s",
//                process.pid(),
//                text(process.parent().map(ProcessHandle::pid)),
//                text(process.info().user()),
//                text(process.info().startInstant()),
//                text(process.info().commandLine()));
//    }
//
//    private static String text(Optional<?> optional) {
//        return optional.map(Object::toString).orElse("-");
//    }
}

