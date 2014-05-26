#!/usr/bin/env python

import smtplib

def SendMail(smtpserver, sender, password, receivers, message, port = 25, tls = False):
    try:
        smtp = smtplib.SMTP()
        smtp.connect(smtpserver, port)
        if tls:
            smtp.starttls()
        smtp.login(sender, password)
        smtp.sendmail(sender, receivers, message)
        smtp.quit()

        print "SendMail sucess ..."
    except smtplib.SMTPException, Arg:
        print "SendEmail fail..."
        print Arg


if __name__ == "__main__":
    server = 'smtp.gmail.com'
    port = 587
    sender = 'luochunbo@gmail.com'
    receivers = ['luochunbo@126.com']
    password = 'ABCDEFGHIJKL'

    messages = 'From: Luo Chunbo <luochunbo@gmail.com>\n'
    messages += 'To: Luo Chunbo<luochunbo@126.com>\n'
    messages += 'Subject: SMTP e-mail test\n'

    messages += '\n'
    messages += """This is a test e-mail message\n...."""
    

    SendMail(server, sender, password, receivers, messages, port, True)

    server2 = 'smtp.126.com'

    sender2 = 'luochunbo@126.com'
    receivers2 = ['luochunbo@126.com']
    password2 = 'ABCDEFGHIJKL'

    messages = 'From: Luo Chunbo <luochunbo@126.com>\n'
    messages += 'To: Luo Chunbo<luochunbo@126.com>\n'
    messages += 'Subject: SMTP e-mail test\n'

    messages += '\n'
    messages += """This is a test e-mail message\n...."""

    SendMail(server2, sender2, password2, receivers2, messages)

    
