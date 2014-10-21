package cn.domob.ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TextView;
import cn.domob.wall.core.AdInfo;
import cn.domob.wall.core.AdInfo.AdType;
import cn.domob.wall.core.ControlInfo;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.ReportUserActionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;

public class l
{
  private static o h = new o(l.class.getSimpleName());
  private TextView A;
  private View B;
  private ProgressBar C;
  private TextView D;
  private View E;
  private ProgressBar F;
  private TextView G;
  private View H;
  private ProgressBar I;
  private TextView J;
  private int K = 1;
  private int L = 1;
  private int M = 1;
  private int N = 1;
  private int O = 600;
  private ArrayList<AdInfo> P = new ArrayList();
  private ArrayList<AdInfo> Q = new ArrayList();
  private ArrayList<AdInfo> R = new ArrayList();
  private ArrayList<AdInfo> S = new ArrayList();
  private boolean T = false;
  private boolean U = false;
  private boolean V = false;
  private boolean W = false;
  private int X = 0;
  private LinearLayout Y;
  private boolean Z = false;
  RelativeLayout a;
  private ArrayList<String> aa = new ArrayList();
  private int ab;
  private Timer ac;
  private b ad;
  private boolean ae = false;
  private int af;
  private boolean ag = true;
  private long ah;
  a b;
  AbsListView.OnScrollListener c;
  boolean d = true;
  boolean e = true;
  boolean f = true;
  boolean g = false;
  private Context i;
  private ArrayList<AdInfo> j = new ArrayList();
  private ArrayList<AdInfo> k = new ArrayList();
  private ArrayList<AdInfo> l = new ArrayList();
  private ArrayList<AdInfo> m = new ArrayList();
  private ControlInfo n;
  private DService o;
  private DGallery p;
  private ListView q;
  private ListView r;
  private ListView s;
  private ListView t;
  private n u;
  private n v;
  private n w;
  private n x;
  private View y;
  private ProgressBar z;

  public View a()
  {
    if (this.a != null)
    {
      ((TabHost)this.a.findViewById(16908306)).setVisibility(4);
      ((RelativeLayout)this.a.findViewById(d.a(this.i, "onlylistRelativeS"))).setVisibility(4);
      final ProgressBar localProgressBar = (ProgressBar)this.a.findViewById(d.a(this.i, "home_progress"));
      final TextView localTextView = (TextView)this.a.findViewById(d.a(this.i, "home_progress_tv"));
      ((Activity)this.i).runOnUiThread(new Runnable()
      {
        public void run()
        {
          localProgressBar.setVisibility(8);
          localTextView.setVisibility(0);
          localTextView.setText("网络链接错误，请稍后重试");
        }
      });
      return this.a;
    }
    return null;
  }

  public View a(View paramView)
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)LayoutInflater.from(this.i).inflate(e.a(this.i, "l_home_banner"), null);
    this.p = ((DGallery)localRelativeLayout.findViewById(d.a(this.i, "gallery1")));
    if (!this.n.isHasBanner())
    {
      localRelativeLayout.setVisibility(8);
      return null;
    }
    if ((this.k == null) || (this.k.size() == 0))
    {
      localRelativeLayout.setVisibility(8);
      return null;
    }
    this.aa.clear();
    Iterator localIterator = this.k.iterator();
    while (localIterator.hasNext())
    {
      String str2 = ((AdInfo)localIterator.next()).getAdBannerImageURL();
      this.aa.add(str2);
    }
    this.p.setAdapter(new m(this.k, this.aa, this.i, this.o));
    a(this.k);
    this.p.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (System.currentTimeMillis() - l.c(l.this) <= l.d(l.this))
          return;
        l.a(l.this, System.currentTimeMillis());
        ((AdInfo)l.e(l.this).get(paramAnonymousInt % l.e(l.this).size())).setAdActualPosition(paramAnonymousInt % l.e(l.this).size());
        l.a(l.this).onClickWallItem((AdInfo)l.e(l.this).get(paramAnonymousInt % l.e(l.this).size()));
      }
    });
    this.p.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        int i = paramAnonymousMotionEvent.getAction();
        if (i == 0)
          l.a(l.this, true);
        while (i != 1)
          return false;
        l.a(l.this, false);
        return false;
      }
    });
    this.p.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        int i = paramAnonymousInt % l.e(l.this).size();
        l.this.a(i);
      }

      public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView)
      {
      }
    });
    h.b("banner广告轮播时间间隔:" + this.n.getBannerIntervalTime());
    String str1 = this.n.getBannerIntervalTime() + "";
    if ((str1.equals("")) || (str1.length() == 0) || (str1 == null))
      this.af = 5;
    this.af = this.n.getBannerIntervalTime();
    if ((this.af < 1) && (this.af != 0))
      this.af = 5;
    if (this.af == 0);
    while (true)
    {
      b(localRelativeLayout);
      return localRelativeLayout;
      this.ac = new Timer();
      this.ad = new b(null);
      this.ac.scheduleAtFixedRate(this.ad, 0L, 1000 * this.af);
    }
  }

  public View a(boolean paramBoolean, Context paramContext, ArrayList<AdInfo> paramArrayList1, ArrayList<AdInfo> paramArrayList2, ControlInfo paramControlInfo, DService paramDService)
  {
    this.i = paramContext;
    this.j = paramArrayList1;
    this.k = paramArrayList2;
    this.n = paramControlInfo;
    this.o = paramDService;
    this.a = ((RelativeLayout)LayoutInflater.from(this.i).inflate(e.a(this.i, "l_home"), null));
    this.c = new AbsListView.OnScrollListener()
    {
      public void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
      }

      public void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default:
          return;
        case 2:
          l.a(l.this).setloadImgLock();
          return;
        case 0:
          l.a(l.this).setloadImgUnLock();
          return;
        case 1:
        }
        l.a(l.this).setloadImgLock();
      }
    };
    if (paramBoolean)
    {
      a(this.a, paramBoolean);
      if (this.n.isClassify())
        if (this.f)
        {
          c(this.a);
          e(this.a);
        }
    }
    while (true)
    {
      if (!this.d)
        ((RelativeLayout)this.a.findViewById(d.a(this.i, "title"))).setVisibility(8);
      return this.a;
      d(this.a);
      continue;
      d(this.a);
      continue;
      a(this.a, paramBoolean);
    }
  }

  public void a(int paramInt)
  {
    View localView1 = this.Y.getChildAt(this.X);
    View localView2 = this.Y.getChildAt(paramInt);
    if ((localView1 != null) && (localView2 != null))
    {
      ImageView localImageView1 = (ImageView)localView1;
      ImageView localImageView2 = (ImageView)localView2;
      localImageView1.setBackgroundResource(c.a(this.i, "u_point_default"));
      localImageView2.setBackgroundResource(c.a(this.i, "u_point_select"));
      this.X = paramInt;
    }
  }

  public void a(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ((TabHost)paramView.findViewById(16908306)).setVisibility(0);
      ((RelativeLayout)paramView.findViewById(d.a(this.i, "onlylistRelativeS"))).setVisibility(0);
      ((RelativeLayout)paramView.findViewById(d.a(this.i, "home_progress_rl"))).setVisibility(4);
      return;
    }
    ((TabHost)paramView.findViewById(16908306)).setVisibility(4);
    ((RelativeLayout)paramView.findViewById(d.a(this.i, "onlylistRelativeS"))).setVisibility(4);
    ((RelativeLayout)paramView.findViewById(d.a(this.i, "home_progress_rl"))).setVisibility(0);
    ((TextView)this.a.findViewById(d.a(this.i, "home_progress_tv"))).setVisibility(8);
  }

  public void a(ArrayList<AdInfo> paramArrayList)
  {
    if (paramArrayList != null)
    {
      for (int i1 = 0; i1 < paramArrayList.size(); i1++)
        ((AdInfo)paramArrayList.get(i1)).setAdActualPosition(i1);
      if (!this.g)
        this.o.doImpReports(paramArrayList);
    }
  }

  public void a(ArrayList<AdInfo> paramArrayList, int paramInt)
  {
    if (!this.T)
    {
      if (paramInt * this.ab < paramArrayList.size())
        for (int i2 = (paramInt - 1) * this.ab; i2 < paramInt * this.ab; i2++)
          this.P.add(paramArrayList.get(i2));
      for (int i1 = (paramInt - 1) * this.ab; i1 < paramArrayList.size(); i1++)
        this.P.add(paramArrayList.get(i1));
      this.T = true;
      if (paramInt > 1)
        this.o.doUserActionReport(DService.ReportUserActionType.PGDN);
    }
  }

  public void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.d = paramBoolean1;
    this.e = paramBoolean2;
    this.f = paramBoolean3;
  }

  public View b(View paramView)
  {
    this.Y = ((LinearLayout)paramView.findViewById(d.a(this.i, "gallery_point_linear")));
    h.b("屏幕密度：" + h.a(this.i));
    int i1 = 9 * (int)h.a(this.i);
    int i2 = 9 * (int)h.a(this.i);
    int i3 = 9 * (int)h.a(this.i);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(i1, i2);
    localLayoutParams.leftMargin = i3;
    localLayoutParams.rightMargin = i3;
    h.b("mBannerPicUrls.size()" + this.aa.size());
    int i4 = 0;
    if (i4 < this.aa.size())
    {
      ImageView localImageView = new ImageView(this.i);
      if (i4 == 0)
        localImageView.setBackgroundResource(c.a(this.i, "u_point_select"));
      while (true)
      {
        localImageView.setLayoutParams(localLayoutParams);
        this.Y.addView(localImageView);
        i4++;
        break;
        localImageView.setBackgroundResource(c.a(this.i, "u_point_default"));
      }
    }
    return null;
  }

  public void b(ArrayList<AdInfo> paramArrayList, int paramInt)
  {
    if (!this.U)
    {
      if (paramInt * this.ab < paramArrayList.size())
        for (int i2 = (paramInt - 1) * this.ab; i2 < paramInt * this.ab; i2++)
          this.Q.add(paramArrayList.get(i2));
      for (int i1 = (paramInt - 1) * this.ab; i1 < paramArrayList.size(); i1++)
        this.Q.add(paramArrayList.get(i1));
      this.U = true;
      if (paramInt > 1)
        this.o.doUserActionReport(DService.ReportUserActionType.PGDN);
    }
  }

  public void c(View paramView)
  {
    ((RelativeLayout)paramView.findViewById(d.a(this.i, "onlylistRelativeS"))).setVisibility(4);
    this.l.clear();
    this.m.clear();
    int i1 = 0;
    if (i1 < this.j.size())
    {
      if (((AdInfo)this.j.get(i1)).getAdType().name().equals("GAME"))
        this.l.add(this.j.get(i1));
      while (true)
      {
        i1++;
        break;
        if (((AdInfo)this.j.get(i1)).getAdType().name().equals("APPLICATION"))
          this.m.add(this.j.get(i1));
      }
    }
    this.ab = this.n.getShowAdNum();
    h.b("每次展现的广告数量" + this.ab);
    if (this.ab <= 0)
      this.ab = 15;
    this.ab = 1000;
    if (this.ag)
    {
      a(this.j, this.K);
      c(this.l, this.M);
      b(this.m, this.L);
      this.ag = false;
    }
    this.u = new n(this.i, this.P, this.n, this.o);
    this.v = new n(this.i, this.R, this.n, this.o);
    this.w = new n(this.i, this.Q, this.n, this.o);
    a(this.P);
    this.q = ((ListView)paramView.findViewById(d.a(this.i, "list_app")));
    this.r = ((ListView)paramView.findViewById(d.a(this.i, "list_game")));
    this.s = ((ListView)paramView.findViewById(d.a(this.i, "list_all")));
    View localView1 = a(paramView);
    View localView2 = LayoutInflater.from(this.i).inflate(e.a(this.i, "l_home_list_footer"), null);
    this.B = ((LinearLayout)localView2.findViewById(d.a(this.i, "list_footer")));
    this.C = ((ProgressBar)localView2.findViewById(d.a(this.i, "more_progressbar")));
    this.D = ((TextView)localView2.findViewById(d.a(this.i, "more_textview")));
    this.D.setText("点击回到顶部");
    if ((this.n.isHasBanner()) && (this.k != null) && (this.k.size() != 0) && (this.e))
      this.s.addHeaderView(localView1);
    localView2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        l.f(l.this).setSelection(0);
      }
    });
    if ((this.j != null) && (!this.j.equals("")) && (this.j.size() > 10))
      this.s.addFooterView(localView2);
    View localView3 = LayoutInflater.from(this.i).inflate(e.a(this.i, "l_home_list_footer"), null);
    this.E = ((LinearLayout)localView3.findViewById(d.a(this.i, "list_footer")));
    this.F = ((ProgressBar)localView3.findViewById(d.a(this.i, "more_progressbar")));
    this.G = ((TextView)localView3.findViewById(d.a(this.i, "more_textview")));
    this.G.setText("点击回到顶部");
    if ((this.n.isHasBanner()) && (this.k != null) && (this.k.size() != 0) && (this.e))
      this.r.addHeaderView(localView1);
    localView3.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        l.g(l.this).setSelection(0);
      }
    });
    if ((this.l != null) && (!this.l.equals("")) && (this.l.size() > 10))
      this.r.addFooterView(localView3);
    View localView4 = LayoutInflater.from(this.i).inflate(e.a(this.i, "l_home_list_footer"), null);
    this.H = ((LinearLayout)localView4.findViewById(d.a(this.i, "list_footer")));
    this.I = ((ProgressBar)localView4.findViewById(d.a(this.i, "more_progressbar")));
    this.J = ((TextView)localView4.findViewById(d.a(this.i, "more_textview")));
    this.J.setText("点击回到顶部");
    if ((this.n.isHasBanner()) && (this.k != null) && (this.k.size() != 0) && (this.e))
      this.q.addHeaderView(localView1);
    localView4.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        l.h(l.this).setSelection(0);
      }
    });
    if ((this.m != null) && (!this.m.equals("")) && (this.m.size() > 10))
      this.q.addFooterView(localView4);
    this.q.setAdapter(this.w);
    this.r.setAdapter(this.v);
    this.s.setAdapter(this.u);
    this.q.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (System.currentTimeMillis() - l.c(l.this) <= l.d(l.this))
          return;
        l.a(l.this, System.currentTimeMillis());
        if ((l.i(l.this).isHasBanner()) && (l.e(l.this) != null) && (l.e(l.this).size() != 0) && (l.this.e))
        {
          ((AdInfo)l.j(l.this).get(paramAnonymousInt - 1)).setAdActualPosition(paramAnonymousInt - 1);
          l.a(l.this).onClickWallItem((AdInfo)l.j(l.this).get(paramAnonymousInt - 1));
          return;
        }
        ((AdInfo)l.j(l.this).get(paramAnonymousInt)).setAdActualPosition(paramAnonymousInt);
        l.a(l.this).onClickWallItem((AdInfo)l.j(l.this).get(paramAnonymousInt));
      }
    });
    this.r.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (System.currentTimeMillis() - l.c(l.this) <= l.d(l.this))
          return;
        l.a(l.this, System.currentTimeMillis());
        if ((l.i(l.this).isHasBanner()) && (l.e(l.this) != null) && (l.e(l.this).size() != 0) && (l.this.e))
        {
          ((AdInfo)l.k(l.this).get(paramAnonymousInt - 1)).setAdActualPosition(paramAnonymousInt - 1);
          l.a(l.this).onClickWallItem((AdInfo)l.k(l.this).get(paramAnonymousInt - 1));
          return;
        }
        ((AdInfo)l.k(l.this).get(paramAnonymousInt)).setAdActualPosition(paramAnonymousInt);
        l.a(l.this).onClickWallItem((AdInfo)l.k(l.this).get(paramAnonymousInt));
      }
    });
    this.s.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (System.currentTimeMillis() - l.c(l.this) <= l.d(l.this))
          return;
        l.a(l.this, System.currentTimeMillis());
        if ((l.i(l.this).isHasBanner()) && (l.e(l.this) != null) && (l.e(l.this).size() != 0) && (l.this.e))
        {
          ((AdInfo)l.l(l.this).get(paramAnonymousInt - 1)).setAdActualPosition(paramAnonymousInt - 1);
          l.a(l.this).onClickWallItem((AdInfo)l.l(l.this).get(paramAnonymousInt - 1));
          return;
        }
        ((AdInfo)l.l(l.this).get(paramAnonymousInt)).setAdActualPosition(paramAnonymousInt);
        l.a(l.this).onClickWallItem((AdInfo)l.l(l.this).get(paramAnonymousInt));
      }
    });
    this.q.setOnScrollListener(this.c);
    this.r.setOnScrollListener(this.c);
    this.s.setOnScrollListener(this.c);
  }

  public void c(ArrayList<AdInfo> paramArrayList, int paramInt)
  {
    if (!this.V)
    {
      if (paramInt * this.ab < paramArrayList.size())
        for (int i2 = (paramInt - 1) * this.ab; i2 < paramInt * this.ab; i2++)
          this.R.add(paramArrayList.get(i2));
      for (int i1 = (paramInt - 1) * this.ab; i1 < paramArrayList.size(); i1++)
        this.R.add(paramArrayList.get(i1));
      this.V = true;
      if (paramInt > 1)
        this.o.doUserActionReport(DService.ReportUserActionType.PGDN);
    }
  }

  public void d(View paramView)
  {
    ((TabHost)paramView.findViewById(16908306)).setVisibility(4);
    ((RelativeLayout)paramView.findViewById(d.a(this.i, "onlylistRelativeS"))).setVisibility(0);
    this.ab = this.n.getShowAdNum();
    h.b("每次展现的广告数量" + this.ab);
    if (this.ab <= 0)
      this.ab = 15;
    this.ab = 60;
    this.t = ((ListView)paramView.findViewById(d.a(this.i, "list_only")));
    this.t.setVisibility(0);
    View localView1 = a(paramView);
    View localView2 = LayoutInflater.from(this.i).inflate(e.a(this.i, "l_home_list_footer"), null);
    this.y = ((LinearLayout)localView2.findViewById(d.a(this.i, "list_footer")));
    this.z = ((ProgressBar)localView2.findViewById(d.a(this.i, "more_progressbar")));
    this.A = ((TextView)localView2.findViewById(d.a(this.i, "more_textview")));
    this.A.setText("点击回到顶部");
    if ((this.n.isHasBanner()) && (this.k != null) && (this.k.size() != 0) && (this.e))
      this.t.addHeaderView(localView1);
    localView2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        l.b(l.this).setSelection(0);
      }
    });
    this.t.addFooterView(localView2);
    if (this.ag)
    {
      d(this.j, this.N);
      this.ag = false;
    }
    this.x = new n(this.i, this.S, this.n, this.o);
    a(this.S);
    this.t.setAdapter(this.x);
    this.t.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (System.currentTimeMillis() - l.c(l.this) <= l.d(l.this))
          return;
        l.a(l.this, System.currentTimeMillis());
        if ((l.i(l.this).isHasBanner()) && (l.e(l.this) != null) && (l.e(l.this).size() != 0) && (l.this.e))
        {
          ((AdInfo)l.l(l.this).get(paramAnonymousInt - 1)).setAdActualPosition(paramAnonymousInt - 1);
          l.a(l.this).onClickWallItem((AdInfo)l.l(l.this).get(paramAnonymousInt - 1));
          return;
        }
        ((AdInfo)l.l(l.this).get(paramAnonymousInt)).setAdActualPosition(paramAnonymousInt);
        l.a(l.this).onClickWallItem((AdInfo)l.l(l.this).get(paramAnonymousInt));
      }
    });
    this.t.setOnScrollListener(this.c);
  }

  public void d(ArrayList<AdInfo> paramArrayList, int paramInt)
  {
    if (!this.W)
    {
      if (paramInt * this.ab < paramArrayList.size())
        for (int i2 = (paramInt - 1) * this.ab; i2 < paramInt * this.ab; i2++)
          this.S.add(paramArrayList.get(i2));
      for (int i1 = (paramInt - 1) * this.ab; i1 < paramArrayList.size(); i1++)
        this.S.add(paramArrayList.get(i1));
      this.W = true;
      if (paramInt > 1)
        this.o.doUserActionReport(DService.ReportUserActionType.PGDN);
    }
  }

  public View e(View paramView)
  {
    TabHost localTabHost = (TabHost)paramView.findViewById(16908306);
    localTabHost.setup();
    String str1 = this.i.getString(g.a(this.i, "tab_app"));
    String str2 = this.i.getString(g.a(this.i, "tab_game"));
    String str3 = this.i.getString(g.a(this.i, "tab_all"));
    String str4 = this.i.getString(g.a(this.i, "tab_app_english"));
    String str5 = this.i.getString(g.a(this.i, "tab_game_english"));
    String str6 = this.i.getString(g.a(this.i, "tab_all_english"));
    View localView1 = LayoutInflater.from(this.i).inflate(e.a(this.i, "l_home_tab_element"), null);
    final ImageView localImageView1 = (ImageView)localView1.findViewById(d.a(this.i, "tab_bg_select"));
    ((ImageView)localView1.findViewById(d.a(this.i, "tab_image"))).setImageResource(c.a(this.i, "u_home_tab_all"));
    final TextView localTextView1 = (TextView)localView1.findViewById(d.a(this.i, "tab_name"));
    localTextView1.setText(str3);
    final TextView localTextView2 = (TextView)localView1.findViewById(d.a(this.i, "tab_name_english"));
    localTextView2.setText(str6);
    ((TextView)localView1.findViewById(d.a(this.i, "tab_name"))).getPaint().setFakeBoldText(true);
    View localView2 = LayoutInflater.from(this.i).inflate(e.a(this.i, "l_home_tab_element"), null);
    final ImageView localImageView2 = (ImageView)localView2.findViewById(d.a(this.i, "tab_bg_select"));
    ((ImageView)localView2.findViewById(d.a(this.i, "tab_image"))).setImageResource(c.a(this.i, "u_home_tab_app"));
    final TextView localTextView3 = (TextView)localView2.findViewById(d.a(this.i, "tab_name"));
    localTextView3.setText(str1);
    final TextView localTextView4 = (TextView)localView2.findViewById(d.a(this.i, "tab_name_english"));
    localTextView4.setText(str4);
    ((TextView)localView2.findViewById(d.a(this.i, "tab_name"))).getPaint().setFakeBoldText(true);
    View localView3 = LayoutInflater.from(this.i).inflate(e.a(this.i, "l_home_tab_element"), null);
    final ImageView localImageView3 = (ImageView)localView3.findViewById(d.a(this.i, "tab_bg_select"));
    ((ImageView)localView3.findViewById(d.a(this.i, "tab_image"))).setImageResource(c.a(this.i, "u_home_tab_game"));
    final TextView localTextView5 = (TextView)localView3.findViewById(d.a(this.i, "tab_name"));
    localTextView5.setText(str2);
    final TextView localTextView6 = (TextView)localView3.findViewById(d.a(this.i, "tab_name_english"));
    localTextView6.setText(str5);
    ((TextView)localView3.findViewById(d.a(this.i, "tab_name"))).getPaint().setFakeBoldText(true);
    localTabHost.addTab(localTabHost.newTabSpec(str3).setIndicator(localView1).setContent(d.a(this.i, "list_all")));
    localTabHost.addTab(localTabHost.newTabSpec(str2).setIndicator(localView3).setContent(d.a(this.i, "list_game")));
    localTabHost.addTab(localTabHost.newTabSpec(str1).setIndicator(localView2).setContent(d.a(this.i, "list_app")));
    localImageView2.setVisibility(4);
    localImageView3.setVisibility(4);
    localImageView1.setVisibility(0);
    final int i1 = this.i.getResources().getColor(b.a(this.i, "tab_default"));
    final int i2 = this.i.getResources().getColor(b.a(this.i, "tab_select"));
    localTextView3.setTextColor(i1);
    localTextView4.setTextColor(i1);
    localTextView1.setTextColor(i2);
    localTextView2.setTextColor(i2);
    localTextView5.setTextColor(i1);
    localTextView6.setTextColor(i1);
    localTabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener()
    {
      public void onTabChanged(String paramAnonymousString)
      {
        l.b().e("tabId:" + paramAnonymousString);
        String str1 = l.m(l.this).getString(g.a(l.m(l.this), "tab_app"));
        String str2 = l.m(l.this).getString(g.a(l.m(l.this), "tab_game"));
        String str3 = l.m(l.this).getString(g.a(l.m(l.this), "tab_all"));
        if (str1.equals(paramAnonymousString))
        {
          localImageView2.setVisibility(0);
          localImageView3.setVisibility(4);
          localImageView1.setVisibility(4);
          localTextView3.setTextColor(i2);
          localTextView4.setTextColor(i2);
          localTextView1.setTextColor(i1);
          localTextView2.setTextColor(i1);
          localTextView5.setTextColor(i1);
          localTextView6.setTextColor(i1);
        }
        do
        {
          return;
          if (str2.equals(paramAnonymousString))
          {
            localImageView2.setVisibility(4);
            localImageView3.setVisibility(0);
            localImageView1.setVisibility(4);
            localTextView3.setTextColor(i1);
            localTextView4.setTextColor(i1);
            localTextView1.setTextColor(i1);
            localTextView2.setTextColor(i1);
            localTextView5.setTextColor(i2);
            localTextView6.setTextColor(i2);
            return;
          }
        }
        while (!str3.equals(paramAnonymousString));
        localImageView2.setVisibility(4);
        localImageView3.setVisibility(4);
        localImageView1.setVisibility(0);
        localTextView3.setTextColor(i1);
        localTextView4.setTextColor(i1);
        localTextView1.setTextColor(i2);
        localTextView2.setTextColor(i2);
        localTextView5.setTextColor(i1);
        localTextView6.setTextColor(i1);
      }
    });
    localImageView2.setVisibility(4);
    localImageView3.setVisibility(4);
    localImageView1.setVisibility(0);
    localTabHost.setCurrentTab(0);
    return null;
  }

  public class a extends RelativeLayout
  {
    public a(Context arg2)
    {
      super();
    }

    public View a(Context paramContext, View paramView)
    {
      removeAllViews();
      addView(paramView);
      return this;
    }

    public void onWindowFocusChanged(boolean paramBoolean)
    {
      super.onWindowFocusChanged(paramBoolean);
      l.b(l.this).getFirstVisiblePosition();
      l.b(l.this).getLastVisiblePosition();
      l.b(l.this).getCount();
    }
  }

  private class b extends TimerTask
  {
    private b()
    {
    }

    public void run()
    {
      while (l.n(l.this).hasWindowFocus())
        if (!l.o(l.this))
        {
          int i = 0;
          while (true)
            if (i < 10 * l.p(l.this))
            {
              i++;
              try
              {
                Thread.sleep(100L);
                if (l.q(l.this))
                  i = 0;
              }
              catch (InterruptedException localInterruptedException)
              {
                while (true)
                  l.b().a(localInterruptedException);
              }
            }
          if ((l.n(l.this).hasWindowFocus()) && (!l.o(l.this)))
            ((Activity)l.m(l.this)).runOnUiThread(new Runnable()
            {
              public void run()
              {
                l.n(l.this).onKeyDown(22, null);
              }
            });
        }
    }
  }
}

 