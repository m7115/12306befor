package com.worklight.wlclient.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import com.worklight.wlclient.api.WLClient;
import com.worklight.wlclient.api.challengehandler.WLChallengeHandler;

public class UIActivity extends Activity
{
  private void createAndShowDialogue(String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(paramString1);
    localBuilder.setMessage(paramString2);
    if ((paramString3 != null) && (paramOnClickListener1 != null))
      localBuilder.setPositiveButton(paramString3, paramOnClickListener1);
    if ((paramString4 != null) && (paramOnClickListener2 != null))
      localBuilder.setNeutralButton(paramString4, paramOnClickListener2);
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.setCancelable(false);
    localAlertDialog.show();
  }

  private void exitApplication()
  {
    finish();
    moveTaskToBack(true);
  }

  private void handleDialogue(String paramString)
  {
    Intent localIntent = getIntent();
    if (paramString.equalsIgnoreCase("wl_remoteDisableRealm"))
      handleRemoteDisableDialogue(localIntent);
    do
    {
      return;
      if (paramString.equalsIgnoreCase("notify"))
      {
        handleNotifyDialogue(localIntent);
        return;
      }
    }
    while (!paramString.equalsIgnoreCase("exit"));
    handleExitDialogue(localIntent);
  }

  private void handleExitDialogue(Intent paramIntent)
  {
    createAndShowDialogue(paramIntent.getStringExtra("dialogue_title"), paramIntent.getStringExtra("dialogue_message"), paramIntent.getStringExtra("positive_button_text"), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        UIActivity.this.finish();
      }
    }
    , null, null);
  }

  private void handleNotifyDialogue(Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("dialogue_title");
    String str2 = paramIntent.getStringExtra("dialogue_message");
    final String str3 = paramIntent.getStringExtra("dialogue_message_id");
    createAndShowDialogue(str1, str2, paramIntent.getStringExtra("positive_button_text"), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        WLChallengeHandler localWLChallengeHandler = WLClient.getInstance().getWLChallengeHandler("wl_remoteDisableRealm");
        if (localWLChallengeHandler != null)
          localWLChallengeHandler.submitChallengeAnswer(str3);
        UIActivity.this.finish();
      }
    }
    , null, null);
  }

  private void handleRemoteDisableDialogue(Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("dialogue_title");
    String str2 = paramIntent.getStringExtra("dialogue_message");
    String str3 = paramIntent.getStringExtra("positive_button_text");
    DialogInterface.OnClickListener local3 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        UIActivity.this.finish();
      }
    };
    final String str4 = paramIntent.getStringExtra("download_link");
    String str5 = null;
    DialogInterface.OnClickListener local4 = null;
    if (str4 != null)
    {
      str5 = paramIntent.getStringExtra("neutral_button_text");
      local4 = new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          UIActivity.this.openURL(str4);
          UIActivity.this.finish();
        }
      };
    }
    createAndShowDialogue(str1, str2, str3, local3, str5, local4);
  }

  private void openURL(String paramString)
  {
    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    handleDialogue(getIntent().getStringExtra("action"));
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }
}

 