package com.mobzilla.services;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class SmsSender {
    // Find your Account Sid and Auth Token at twilio.com/console
    public static final String ACCOUNT_SID =
            "ACf56e9e1de723743428e492059079df95";
    public static final String AUTH_TOKEN =
            "3d9a36fdf95633f8f813bcbc00c6902a";

    public void sendOTP(String to,String otp) {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

        Message message = Message
                .creator(new PhoneNumber("+91"+to), // to
                        new PhoneNumber("+19137285320"), // from
                        "Your verification code is-"+otp)
                .create();

        System.out.println(message.getSid());
    }
}