package cn.domob.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.domob.wall.core.AdInfo;
import cn.domob.wall.core.AdInfo.ClickActionType;
import cn.domob.wall.core.ControlInfo;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.OnImageDownload;
import java.text.DecimalFormat;
import java.util.ArrayList;

public class n extends BaseAdapter
{
  private static o a = new o(n.class.getSimpleName());
  private ArrayList<AdInfo> b = new ArrayList();
  private Context c;
  private ControlInfo d;
  private DService e;

  public n(Context paramContext, ArrayList<AdInfo> paramArrayList, ControlInfo paramControlInfo, DService paramDService)
  {
    this.b = paramArrayList;
    this.c = paramContext;
    this.d = paramControlInfo;
    this.e = paramDService;
  }

  public int getCount()
  {
    return this.b.size();
  }

  public Object getItem(int paramInt)
  {
    return this.b.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(final int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    a locala;
    if (paramView == null)
    {
      paramView = (RelativeLayout)LayoutInflater.from(this.c).inflate(e.a(this.c, "l_home_list_element"), null);
      locala = new a();
      locala.a = ((ImageView)paramView.findViewById(d.a(this.c, "lsit_logo")));
      locala.b = ((ImageView)paramView.findViewById(d.a(this.c, "lsit_logo_new")));
      locala.c = ((TextView)paramView.findViewById(d.a(this.c, "list_name")));
      locala.d = ((TextView)paramView.findViewById(d.a(this.c, "list_describe")));
      int i = (int)((-135 + (int)(h.c(this.c) / h.b(this.c))) * h.b(this.c));
      locala.d.setWidth(i);
      locala.e = ((RelativeLayout)paramView.findViewById(d.a(this.c, "list_actiontype_bg")));
      locala.f = ((TextView)paramView.findViewById(d.a(this.c, "list_actiontype")));
      locala.g = ((TextView)paramView.findViewById(d.a(this.c, "list_action_des")));
      locala.h = ((TextView)paramView.findViewById(d.a(this.c, "list_apksize")));
      paramView.setTag(locala);
      locala.a.setImageResource(c.a(this.c, "u_list_logo"));
      locala.a.setTag(((AdInfo)this.b.get(paramInt)).getAdLogoURL());
      this.e.requestImage(((AdInfo)this.b.get(paramInt)).getAdLogoURL(), locala.a, new DService.OnImageDownload()
      {
        public void onDownloadSuc(Bitmap paramAnonymousBitmap, String paramAnonymousString, ImageView paramAnonymousImageView)
        {
          if ((paramAnonymousImageView.getTag().equals(paramAnonymousString)) && (paramAnonymousBitmap != null))
            paramAnonymousImageView.setImageBitmap(paramAnonymousBitmap);
        }
      });
      if (!this.d.isShowNewReminder())
        break label479;
      if (!((AdInfo)this.b.get(paramInt)).isNew())
        break label467;
      locala.b.setVisibility(0);
    }
    while (true)
    {
      if (this.d.isButtonShow())
        break label491;
      locala.e.setVisibility(4);
      locala.g.setVisibility(4);
      locala.e.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ((AdInfo)n.a(n.this).get(paramInt)).setAdActualPosition(paramInt);
          n.b(n.this).onClickWallItemButton((AdInfo)n.a(n.this).get(paramInt));
        }
      });
      locala.c.setText(((AdInfo)this.b.get(paramInt)).getAdTitle());
      locala.d.setText(((AdInfo)this.b.get(paramInt)).getAdBriefText());
      return paramView;
      locala = (a)paramView.getTag();
      break;
      label467: locala.b.setVisibility(4);
      continue;
      label479: locala.b.setVisibility(4);
    }
    label491: if (((AdInfo)this.b.get(paramInt)).getAdActionType().name().equals("DOWNLOAD"))
    {
      locala.f.setText("下载");
      locala.g.setText("免费下载");
      locala.h.setVisibility(0);
      String str = new DecimalFormat("0.00").format(((AdInfo)this.b.get(paramInt)).getAdSize() / 1024.0F / 1024.0F);
      locala.h.setText(str + "M");
    }
    while (true)
    {
      locala.h.setVisibility(4);
      locala.g.setVisibility(4);
      break;
      if (((AdInfo)this.b.get(paramInt)).getAdActionType().name().equals("INTERNAL_BROWSER"))
      {
        locala.f.setText("详情");
        locala.g.setText("查看详情");
        locala.h.setVisibility(4);
      }
      else if (((AdInfo)this.b.get(paramInt)).getAdActionType().name().equals("EXTERNAL_BROWSER"))
      {
        locala.f.setText("详情");
        locala.g.setText("查看详情");
        locala.h.setVisibility(4);
      }
      else if (((AdInfo)this.b.get(paramInt)).getAdActionType().name().equals("LAUNCH"))
      {
        locala.h.setVisibility(4);
      }
      else
      {
        locala.e.setVisibility(4);
        locala.g.setVisibility(4);
        locala.h.setVisibility(4);
      }
    }
  }

  public class a
  {
    ImageView a;
    ImageView b;
    TextView c;
    TextView d;
    RelativeLayout e;
    TextView f;
    TextView g;
    TextView h;

    public a()
    {
    }
  }
}

 