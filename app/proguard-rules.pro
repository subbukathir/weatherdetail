# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

#### -- Picasso --
 -dontwarn com.squareup.picasso.**

  # ---- Butterknife -----
  -keep class butterknife.** { *; }
  -dontwarn butterknife.internal.**
  -keep class **$$ViewBinder { *; }

  -keepclasseswithmembernames class * {
      @butterknife.* <fields>;
  }

  -keepclasseswithmembernames class * {
      @butterknife.* <methods>;
  }

   #### -- OkHttp --

   -dontwarn com.squareup.okhttp.internal.**

   -dontwarn okio.**
   -dontwarn com.squareup.okhttp3.**
    -dontwarn com.squareup.okhttp3.internal.**
   -keep class com.squareup.okhttp3.** { *; }
   -keep interface com.squareup.okhttp3.** { *; }

    -dontwarn javax.annotation.Nullable
    -dontwarn javax.annotation.ParametersAreNonnullByDefault
    -dontwarn okhttp3.internal.platform.*

    -dontwarn okhttp3.**
    -dontwarn javax.annotation.**
    -dontwarn org.conscrypt.**
    -dontwarn retrofit2.Platform$Java8

    -keep class android.support.v7.widget.ShareActionProvider { *; }
