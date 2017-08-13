ClipWaitPlus()
    {
    Counter = 1
    Clipwait, .25
    while ErrorLevel = 1
        {
        Send ^c
        Clipwait, .25
        counter += 1
        if Counter = 50
            {
            MsgBox, 5, Clipwait Timeout, the clipboard has timed out. Press "Retry" to copy again, or "Cancel" to terminate the script.
            IfMsgBox Retry
                {
                Counter = 1
                ErrorLevel = 1
                }
            else
                exit
            }
        }
    return
    }