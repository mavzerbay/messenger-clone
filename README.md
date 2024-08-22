# Mesajlaşmanın Yeni Kralı: Messenger Clone! 

**Can sıkıntısından kurtulmanın en hızlı yolu!** ⚡ Arkadaşlarınla sohbet et, emoji yağmuru yap ve anılar biriktir! Flutter'ın sihirli değneğiyle hem Android'de hem de iPhone'da uçan mesajlar! 

**Neden Messenger Clone?**

* **Anında Mesajlaşma:** Mesajların saniyeler içinde ulaştığı bir dünyaya hoş geldin!
* **Güçlü Özellikler:** Sesli mesajlar, video görüşmeler ve daha fazlası yakında geliyor! 
* **Kullanıcı Dostu Arayüz:** Sade ve şık tasarımıyla dikkat çekiyor.
* **Açık Kaynak:** Projeye katkıda bulun ve geliştirmelere ortak ol!

**Nasıl Çalıştırırsın?**

1. **Klonla:** `git clone https://github.com/mavzerbay/messenger-clone.git`
2. **Bağımlılıkları Yükle:** `flutter pub get`
3. **Çalıştır:** `flutter run`

**Teknolojiler**

* **Flutter:** Uygulamanın can damarı! Hem Android hem de iOS için tek kod tabanıyla uygulama geliştirmeyi sağlıyor.
* **Dart:** Flutter'ın güçlü ve modern programlama dili.
* **Flutter Bloc:** Uygulamanın mantığını kullanıcı arayüzünden ayırmak için kullanılan sihirli bir değnek.
* **auto_route:** Rota yönetimi için kolay ve güvenilir bir çözüm.
* **dio:** HTTP istekleri için süper hızlı bir araç.
* **Ve daha fazlası!**

**Projenin Mimarisi**

Kodlarımızın evi, düzenli ve temiz bir mahalleye benziyor. Her klasörün kendine özel bir görevi var! 

**Klasör Yapısı**

```
┣ 📂lib
┃ ┣ 📂src
┃ ┃ ┣ 📂app
┃ ┃ ┃ ┣ 📂base
┃ ┃ ┃ ┃ ┣ 📂bloc
┃ ┃ ┃ ┃ ┃ ┣ 📜app_bloc_observer.dart
┃ ┃ ┃ ┃ ┃ ┣ 📜base_bloc_event.dart
┃ ┃ ┃ ┃ ┃ ┣ 📜base_bloc_state.dart
┃ ┃ ┃ ┃ ┃ ┗ 📜base_bloc.dart
┃ ┃ ┃ ┃ ┣ 📂cache
┃ ┃ ┃ ┃ ┃ ┗ 📜cache_manager.dart
┃ ┃ ┃ ┃ ┗ 📜base_page.dart
┃ ┃ ┃ ┣ 📂bloc
┃ ┃ ┃ ┃ ┣ 📜app_bloc.dart
┃ ┃ ┃ ┃ ┣ 📜app_bloc.freezed.dart
┃ ┃ ┃ ┃ ┣ 📜app_event.dart
┃ ┃ ┃ ┃ ┗ 📜app_state.dart
┃ ┃ ┃ ┣ 📂components
┃ ┃ ┃ ┃ ┣ 📂inputs
┃ ┃ ┃ ┃ ┃ ┗ 📜text_input_field.dart
┃ ┃ ┃ ┃ ┣ 📜animated_button.dart
┃ ┃ ┃ ┃ ┗ 📜snackbars.dart
┃ ┃ ┃ ┣ 📂di
┃ ┃ ┃ ┃ ┗ 📜locator.dart
┃ ┃ ┃ ┣ 📂navigation
┃ ┃ ┃ ┃ ┣ 📂observer
┃ ┃ ┃ ┃ ┃ ┗ 📜app_navigator_observer.dart
┃ ┃ ┃ ┃ ┣ 📜app_navigator_impl.dart
┃ ┃ ┃ ┃ ┣ 📜app_router.dart
┃ ┃ ┃ ┃ ┣ 📜app_router.gr.dart
┃ ┃ ┃ ┃ ┗ 📜empty_routes.dart
┃ ┃ ┃ ┣ 📂network
┃ ┃ ┃ ┃ ┣ 📂clients
┃ ┃ ┃ ┃ ┃ ┣ 📂base
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜build_dio_client.dart
┃ ┃ ┃ ┃ ┃ ┣ 📜base_client.dart
┃ ┃ ┃ ┃ ┃ ┗ 📜base_client.g.dart
┃ ┃ ┃ ┃ ┗ 📂interceptors
┃ ┃ ┃ ┃   ┗ 📜token_interceptor.dart
┃ ┃ ┃ ┣ 📂pages
┃ ┃ ┃ ┃ ┣ 📂chats
┃ ┃ ┃ ┃ ┃ ┣ 📂subviews
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜chat_detail_page.dart
┃ ┃ ┃ ┃ ┃ ┗ 📜chats_page.dart
┃ ┃ ┃ ┃ ┣ 📂dashboard
┃ ┃ ┃ ┃ ┃ ┗ 📜dashboard_page.dart
┃ ┃ ┃ ┃ ┣ 📂login
┃ ┃ ┃ ┃ ┃ ┣ 📂bloc
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜login_bloc.dart
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜login_bloc.freezed.dart
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜login_event.dart
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜login_state.dart
┃ ┃ ┃ ┃ ┃ ┗ 📜login_page.dart
┃ ┃ ┃ ┃ ┣ 📂register
┃ ┃ ┃ ┃ ┃ ┣ 📂bloc
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜register_bloc.dart
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜register_bloc.freezed.dart
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜register_event.dart
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜register_state.dart
┃ ┃ ┃ ┃ ┃ ┗ 📜register_page.dart
┃ ┃ ┃ ┃ ┗ 📜splash_page.dart
┃ ┃ ┃ ┗ 📂resource
┃ ┃ ┃   ┗ 📂constants
┃ ┃ ┃     ┣ 📜color_constants.dart
┃ ┃ ┃     ┗ 📜env_constants.dart
┃ ┃ ┣ 📂data
┃ ┃ ┃ ┣ 📂interfaces
┃ ┃ ┃ ┃ ┗ 📜auth_service_interface.dart
┃ ┃ ┃ ┗ 📂models
┃ ┃ ┃   ┣ 📜login_request.dart
┃ ┃ ┃   ┣ 📜login_request.g.dart
┃ ┃ ┃   ┣ 📜register_request.dart
┃ ┃ ┃   ┗ 📜register_request.g.dart
┃ ┃ ┣ 📂domain
┃ ┃ ┃ ┣ 📂domain
┃ ┃ ┃ ┃ ┗ 📜app_navigator.dart
┃ ┃ ┃ ┣ 📂entities
┃ ┃ ┃ ┃ ┣ 📜index.dart
┃ ┃ ┃ ┃ ┣ 📜login_response_entity.dart
┃ ┃ ┃ ┃ ┣ 📜login_response_entity.g.dart
┃ ┃ ┃ ┃ ┣ 📜user_entity.dart
┃ ┃ ┃ ┃ ┗ 📜user_entity.g.dart
┃ ┃ ┃ ┗ 📂repositories
┃ ┃ ┃   ┗ 📜auth_service.dart
┃ ┃ ┗ 📂shared
┃ ┃   ┣ 📂extensions
┃ ┃   ┃ ┗ 📜context_extension.dart
┃ ┃   ┣ 📂mixin
┃ ┃   ┃ ┣ 📜event_transformer_mixin.dart
┃ ┃   ┃ ┗ 📜log_mixin.dart
┃ ┃   ┣ 📜config.dart
┃ ┃   ┗ 📜stream_logger.dart
┃ ┣ 📜application_config.dart
┃ ┗ 📜main.dart
```

* **lib/src/app:** Uygulamanın kalbi burada atıyor.
  * **base:** Temel bileşenler ve mantık.
  * **components:** Tekrar kullanılabilir bileşenler.
  * **di:** Dependency Injection (Bağımlılık Enjeksiyonu).
  * **navigation:** Navigasyon sistemi.
  * **network:** Ağ istekleri.
  * **pages:** Ekranlar (sayfalar).
* **lib/src/data:** Veri modelleri ve işlemleri.
* **lib/src/domain:** Uygulamanın alanına özgü iş mantığı.
* **lib/src/shared:** Paylaşılan yardımcı kodlar.

**Katkıda Bulun**

Projeyi daha iyi hale getirmek için fikirlerin varsa çekinme! 

**Lisans**

Bu proje, herkesin kullanımına açık ve özgür! Tıpkı bir açık büfe gibi, dilediğin gibi kullanabilirsin! (MIT Lisansı)

**Gelecek Planlar**

Hazır mısın patlamaya? Yakında sesli mesajlarla şarkı söyleyecek, video görüşmelerle karşılıklı dans edebileceksin!

**Bu taslak, hem projenin genel yapısını hem de kod yapısını açıklayarak daha anlaşılır hale getirir. Klasör yapısının görsel olarak da sunulması, okuyucunun projeyi daha kolay anlamasına yardımcı olacaktır.**

**Ek Olarak:**

### BasePageState

* **Amaç:** Uygulamanın temel sayfa durumlarını yöneten soyut bir sınıf.
* **Özellikler:**
    * `appBloc`: Uygulamanın genel durumunu yöneten `AppBloc` örneği.
    * `router`: Uygulamanın navigasyonunu yöneten `AppRouter` örneği.
    * `bloc`: Sayfanın özel durumunu yöneten `BaseBloc` örneği.
* **Metodlar:**
    * `setBloc()`: Sayfanın özel `BaseBloc` örneğini oluşturmak için soyut bir metod.
    * `buildPage(BuildContext context)`: Sayfanın kullanıcı arayüzünü oluşturmak için soyut bir metod.

**Kullanımı:**

* **Kalıtım:** Sayfa durumlarını yönetmek için `BasePageState` sınıfından kalıtım alın.
* **Override:** `setBloc()` ve `buildPage()` metotlarını override ederek sayfanın özel durumunu ve arayüzünü oluşturun.

**Örnek Kullanım:**

```dart

@RoutePage()
class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends BasePageState<MyPage,MyBloc> {
  
  @override
  LoginBloc setBloc() => LoginBloc();

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}
```

`BaseBloc` ve `BaseBlocDelegate` sınıfları, Flutter uygulamalarında durum yönetimi için yaygın olarak kullanılan `flutter_bloc` paketinin üzerine inşa edilmiş soyut sınıflar olarak düşünülebilir. Bu sınıflar, uygulamanızdaki farklı sayfalar veya bileşenler için ortak bir temel sağlayarak kod tekrarını azaltır ve bakım kolaylığını artırır.

### BaseBloc

* **Amaç:** Uygulamadaki tüm bloc'ların temelini oluşturur.
* **Özellikler:**
  * **Generic Tipler:** `E` (event) ve `S` (state) tiplerini kullanarak farklı türde olayları ve durumları temsil eder. Bu sayede her bloc, kendi özel event ve state sınıflarını tanımlayabilir.
  * **Event TransformerMixin:** (Eğer varsa) Event'leri işleme almadan önce dönüştürmek için kullanılır. Bu, bazı durumlarda event'leri filtreleme veya zenginleştirme imkanı sağlar.
  * **LogMixin:** (Eğer varsa) Bloc'un içindeki işlemleri loglamak için kullanılır. Bu, hata ayıklama sürecinde oldukça faydalıdır.
* **Metotlar:**
  * **add(E event):** Yeni bir event eklemek için kullanılır. Bloc'un kapalı olup olmadığını kontrol eder ve event'i işleme alır.

### BaseBlocDelegate

* **Amaç:** `BaseBloc` sınıfını genişleterek ek özellikler sunar.
* **Özellikler:**
  * **AppNavigator:** Uygulama içindeki navigasyonu yönetmek için kullanılan bir nesneye referans verir.
  * **AppBloc:** Uygulamanın genel durumunu yöneten bloc'a referans verir.
* **Metotlar:**
  * **showLoading():** Ekranda bir yükleme göstergesi göstermek için kullanılır.
  * **hideLoading():** Ekrandaki yükleme göstergesini gizlemek için kullanılır.
  * **runBlocCatching():** Asenkron işlemleri güvenli bir şekilde yönetmek için kullanılır. Hata durumlarını yakalar, yükleme göstergesini yönetir ve tamamlanma durumunda çeşitli işlemler yapar.

### Neden BaseBloc ve BaseBlocDelegate Kullanmalıyız?

* **Kod Tekrarını Azaltır:** Ortak özellikleri tek bir yerde tanımlayarak kod tekrarını önler.
* **Bakımı Kolaylaştırır:** Tüm bloc'lar benzer bir yapıya sahip olduğu için kodun anlaşılırlığı ve bakımı kolaylaşır.
* **Özellikleri Genişletir:** `BaseBlocDelegate` sayesinde ek özellikler ekleyerek bloc'ların yeteneklerini artırabilirsiniz.
* **Standartlaştırma:** Proje genelinde bloc'ların kullanımını standartlaştırır.

### Örnek Kullanım

```dart
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(const _AppState()) {
    on<_Started>(
      _onStarted,
      transformer: log(),
    );
  }

  Future<void> _onStarted(_Started event, Emitter<AppState> emit) async {
    await runBlocCatching(
      doOnSubscribe: // ana işlevden önce çalışacak kodlar (opsiyonel),
      action: // ana işlev,
      doOnError:  // hata durumunda çalışacak kodlar (opsiyonel),
      doOnEventCompleted:  // ana işlevden sonra çalışacak kodlar (opsiyonel),
      doOnSuccess:  // başarılı durumda çalışacak kodlar (opsiyonel),
    );
  }
}

```

Bu örnekte, `MyBloc` sınıfı `BaseBloc` sınıfından kalıtım alır ve kendi özel event ve state tiplerini kullanır.

### Sonuç

`BaseBloc` ve `BaseBlocDelegate` sınıfları, Flutter uygulamalarında durum yönetimini daha düzenli ve yönetilebilir hale getirmek için güçlü bir araçtır. Bu sınıflar sayesinde kodunuz daha okunaklı, daha az hata içeren ve daha kolay genişletilebilir hale gelecektir.

**Ek Notlar:**

* `EventTransformerMixin` ve `LogMixin` gibi mixin'ler, ek işlevsellik eklemek için kullanılabilir.
* `runBlocCatching` metodu, hata yönetimi ve yükleme göstergesi gibi sık kullanılan işlemleri kapsular.
* `BaseBloc` ve `BaseBlocDelegate` sınıfları, projenizin ihtiyaçlarına göre özelleştirilebilir.

**Bu açıklama, `BaseBloc` ve `BaseBlocDelegate` sınıflarının temel işlevlerini ve neden kullanılması gerektiğini açıklamaktadır. Daha detaylı bilgi için `flutter_bloc` paketinin resmi dokümantasyonuna başvurabilirsiniz.**

**Ek olarak, bu açıklamayı README dosyanıza eklerken aşağıdaki noktalara dikkat edebilirsiniz:**

* **Kod Snippet'leri:** Kod parçacıklarını uygun şekilde biçimlendirerek daha okunaklı hale getirin.
* **Diyagramlar:** `BaseBloc` ve `BaseBlocDelegate` arasındaki ilişkiyi gösteren basit bir diyagram ekleyebilirsiniz.
* **Örnek Kullanım Senaryoları:** Farklı kullanım senaryoları vererek bu sınıfların ne kadar esnek olduğunu gösterebilirsiniz.

Umarım bu açıklama, `BaseBloc` ve `BaseBlocDelegate` sınıflarını daha iyi anlamanıza yardımcı olur. Başka sorularınız olursa çekinmeden sorabilirsiniz.
