package gitlet;

import java.io.File;
import static gitlet.Utils.*;


/**
 * Represents a gitlet repository.
 *
 *  @author aziz
 */
public class Repository {


    /** The current working directory. */
    public static final File CWD = new File(System.getProperty("user.dir"));

    /** The .gitlet directory. */
    public static final File GITLET_DIR = join(CWD, ".gitlet");


}
