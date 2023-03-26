package gitlet;

import java.io.Serializable;

/**
 * An interface describing dumpable objects.
 *  @author aziz
 */
interface Dumpable extends Serializable {

    /**
     * print useful information about this object on System.out.
     */
    void dump();
}
