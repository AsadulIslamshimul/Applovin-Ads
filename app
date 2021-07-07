
public class ExampleActivity extends Activity
        implements MaxAdViewAdListener
{
    private MaxAdView adView;

    void createBannerAd
    {
        adView = new MaxAdView( "YOUR_AD_UNIT_ID", this );
        adView.setListener( this );
    
        // Stretch to the width of the screen for banners to be fully functional
        int width = ViewGroup.LayoutParams.MATCH_PARENT;
    
        // Banner height on phones and tablets is 50 and 90, respectively
        int heightPx = getResources().getDimensionPixelSize( R.dimen.banner_height );
    
        adView.setLayoutParams( new FrameLayout.LayoutParams( width, heightPx ) );
    
        // Set background or background color for banners to be fully functional
        adView.setBackgroundColor( R.color.background_color );
    
        ViewGroup rootView = findViewById( android.R.id.content );
        rootView.addView( adView );
    
        // Load the ad
        adView.loadAd();
    }

    // MAX Ad Listener
    @Override
    public void onAdLoaded(final MaxAd maxAd) {}

    @Override
    public void onAdLoadFailed(final String adUnitId, final MaxError error) {}

    @Override
    public void onAdDisplayFailed(final MaxAd maxAd, final MaxError error) {}

    @Override
    public void onAdClicked(final MaxAd maxAd) {}

    @Override
    public void onAdExpanded(final MaxAd maxAd) {}

    @Override
    public void onAdCollapsed(final MaxAd maxAd) {}

    @Override
    public void onAdDisplayed(final MaxAd maxAd) { /* DO NOT USE - THIS IS RESERVED FOR FULLSCREEN ADS ONLY AND WILL BE REMOVED IN A FUTURE SDK RELEASE */ }

    @Override
    public void onAdHidden(final MaxAd maxAd) { /* DO NOT USE - THIS IS RESERVED FOR FULLSCREEN ADS ONLY AND WILL BE REMOVED IN A FUTURE SDK RELEASE */ }
}




// xml code

<com.applovin.mediation.ads.MaxAdView
    xmlns:maxads="http://schemas.applovin.com/android/1.0"
    maxads:adUnitId="YOUR_AD_UNIT_ID"
    android:background="@color/banner_background_color" <!-- Set background or background color for banners to be fully functional -->
    android:layout_width="match_parent"                 <!-- Stretch to the width of the screen for banners to be fully functional -->
    android:layout_height="@dimen/banner_height"
</com.applovin.mediation.ads.MaxAdView>

