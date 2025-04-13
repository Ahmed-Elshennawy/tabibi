// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Profile Settings`
  String get profileSettings {
    return Intl.message(
      'Profile Settings',
      name: 'profileSettings',
      desc: '',
      args: [],
    );
  }

  /// `Content`
  String get content {
    return Intl.message('Content', name: 'content', desc: '', args: []);
  }

  /// `Favorites`
  String get favorites {
    return Intl.message('Favorites', name: 'favorites', desc: '', args: []);
  }

  /// `Performance`
  String get performance {
    return Intl.message('Performance', name: 'performance', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Cards`
  String get cards {
    return Intl.message('Cards', name: 'cards', desc: '', args: []);
  }

  /// `Security`
  String get security {
    return Intl.message('Security', name: 'security', desc: '', args: []);
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Signing`
  String get signing {
    return Intl.message('Signing', name: 'signing', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Log Out?`
  String get logOutConfirmationTitle {
    return Intl.message(
      'Log Out?',
      name: 'logOutConfirmationTitle',
      desc: '',
      args: [],
    );
  }

  /// `This will take you to the\n login page.`
  String get logOutConfirmationDescription {
    return Intl.message(
      'This will take you to the\n login page.',
      name: 'logOutConfirmationDescription',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Hello,`
  String get hello {
    return Intl.message('Hello,', name: 'hello', desc: '', args: []);
  }

  /// `Offline`
  String get offline {
    return Intl.message('Offline', name: 'offline', desc: '', args: []);
  }

  /// `Welcome to`
  String get welcomeTo {
    return Intl.message('Welcome to', name: 'welcomeTo', desc: '', args: []);
  }

  /// `Suggested`
  String get suggeted {
    return Intl.message('Suggested', name: 'suggeted', desc: '', args: []);
  }

  /// `You are offline please Connect to a network to access your data.`
  String get youAreOffline {
    return Intl.message(
      'You are offline please Connect to a network to access your data.',
      name: 'youAreOffline',
      desc: '',
      args: [],
    );
  }

  /// `No doctors in favorites`
  String get noDoctorsFavorites {
    return Intl.message(
      'No doctors in favorites',
      name: 'noDoctorsFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message('Unknown', name: 'unknown', desc: '', args: []);
  }

  /// `Search...`
  String get search {
    return Intl.message('Search...', name: 'search', desc: '', args: []);
  }

  /// `Delete?`
  String get deleteHa {
    return Intl.message('Delete?', name: 'deleteHa', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `This will remove the chat\n and its content.`
  String get willRemoveChat {
    return Intl.message(
      'This will remove the chat\n and its content.',
      name: 'willRemoveChat',
      desc: '',
      args: [],
    );
  }

  /// `Doctors`
  String get doctors {
    return Intl.message('Doctors', name: 'doctors', desc: '', args: []);
  }

  /// `Clinics`
  String get clinics {
    return Intl.message('Clinics', name: 'clinics', desc: '', args: []);
  }

  /// `Unread Messages`
  String get unreadMessages {
    return Intl.message(
      'Unread Messages',
      name: 'unreadMessages',
      desc: '',
      args: [],
    );
  }

  /// `Session Expired`
  String get sessionExpired {
    return Intl.message(
      'Session Expired',
      name: 'sessionExpired',
      desc: '',
      args: [],
    );
  }

  /// `Your session has expired. \nPlease log in again.`
  String get yourSesionExpired {
    return Intl.message(
      'Your session has expired. \nPlease log in again.',
      name: 'yourSesionExpired',
      desc: '',
      args: [],
    );
  }

  /// `Biometric login failed. Please try again.`
  String get biometricLoginFailed {
    return Intl.message(
      'Biometric login failed. Please try again.',
      name: 'biometricLoginFailed',
      desc: '',
      args: [],
    );
  }

  /// `No saved credentials found. Please log in manually.`
  String get logInManually {
    return Intl.message(
      'No saved credentials found. Please log in manually.',
      name: 'logInManually',
      desc: '',
      args: [],
    );
  }

  /// `Biometric authentication failed. Please try again.`
  String get biometricAuthenticationFailed {
    return Intl.message(
      'Biometric authentication failed. Please try again.',
      name: 'biometricAuthenticationFailed',
      desc: '',
      args: [],
    );
  }

  /// `Use Biometric`
  String get useBiometric {
    return Intl.message(
      'Use Biometric',
      name: 'useBiometric',
      desc: '',
      args: [],
    );
  }

  /// `Relogin`
  String get relogin {
    return Intl.message('Relogin', name: 'relogin', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Gender`
  String get gender {
    return Intl.message('Gender', name: 'gender', desc: '', args: []);
  }

  /// `Age`
  String get age {
    return Intl.message('Age', name: 'age', desc: '', args: []);
  }

  /// `y.o`
  String get years_old {
    return Intl.message('y.o', name: 'years_old', desc: '', args: []);
  }

  /// `Meds`
  String get meds {
    return Intl.message('Meds', name: 'meds', desc: '', args: []);
  }

  /// `Tests`
  String get tests {
    return Intl.message('Tests', name: 'tests', desc: '', args: []);
  }

  /// `Last Diagnosis`
  String get lastDiagnosis {
    return Intl.message(
      'Last Diagnosis',
      name: 'lastDiagnosis',
      desc: '',
      args: [],
    );
  }

  /// `Cube Health Tracker`
  String get cubeHealthTracker {
    return Intl.message(
      'Cube Health Tracker',
      name: 'cubeHealthTracker',
      desc: '',
      args: [],
    );
  }

  /// `Blood Status`
  String get bloodStatus {
    return Intl.message(
      'Blood Status',
      name: 'bloodStatus',
      desc: '',
      args: [],
    );
  }

  /// `Heart Rate`
  String get heartRate {
    return Intl.message('Heart Rate', name: 'heartRate', desc: '', args: []);
  }

  /// `mmHg`
  String get mmHg {
    return Intl.message('mmHg', name: 'mmHg', desc: '', args: []);
  }

  /// `Bpm`
  String get bpm {
    return Intl.message('Bpm', name: 'bpm', desc: '', args: []);
  }

  /// `Appointments`
  String get appointments {
    return Intl.message(
      'Appointments',
      name: 'appointments',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming appointments`
  String get upcomingAppointments {
    return Intl.message(
      'Upcoming appointments',
      name: 'upcomingAppointments',
      desc: '',
      args: [],
    );
  }

  /// `No upcoming appointments`
  String get noAppointments {
    return Intl.message(
      'No upcoming appointments',
      name: 'noAppointments',
      desc: '',
      args: [],
    );
  }

  /// `Dentist`
  String get dentist {
    return Intl.message('Dentist', name: 'dentist', desc: '', args: []);
  }

  /// `view`
  String get view {
    return Intl.message('view', name: 'view', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `views`
  String get views {
    return Intl.message('views', name: 'views', desc: '', args: []);
  }

  /// `No description available`
  String get noDescriptionAvailable {
    return Intl.message(
      'No description available',
      name: 'noDescriptionAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Posts`
  String get posts {
    return Intl.message('Posts', name: 'posts', desc: '', args: []);
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `No clinics available`
  String get noClinicsAvailable {
    return Intl.message(
      'No clinics available',
      name: 'noClinicsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Clinic`
  String get clinic {
    return Intl.message('Clinic', name: 'clinic', desc: '', args: []);
  }

  /// `General Information`
  String get generalInformation {
    return Intl.message(
      'General Information',
      name: 'generalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Studied At:`
  String get studiedAt {
    return Intl.message('Studied At:', name: 'studiedAt', desc: '', args: []);
  }

  /// `Experience:`
  String get experience {
    return Intl.message('Experience:', name: 'experience', desc: '', args: []);
  }

  /// `Certificates:`
  String get certificates {
    return Intl.message(
      'Certificates:',
      name: 'certificates',
      desc: '',
      args: [],
    );
  }

  /// `Book Appointment`
  String get bookAppointment {
    return Intl.message(
      'Book Appointment',
      name: 'bookAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get book {
    return Intl.message('Book', name: 'book', desc: '', args: []);
  }

  /// `Booked`
  String get booked {
    return Intl.message('Booked', name: 'booked', desc: '', args: []);
  }

  /// `Receives`
  String get receives {
    return Intl.message('Receives', name: 'receives', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Add Payment Card`
  String get addPaymentCard {
    return Intl.message(
      'Add Payment Card',
      name: 'addPaymentCard',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get egp {
    return Intl.message('EGP', name: 'egp', desc: '', args: []);
  }

  /// `Unable to load cards. Please try again.`
  String get unableLoadCards {
    return Intl.message(
      'Unable to load cards. Please try again.',
      name: 'unableLoadCards',
      desc: '',
      args: [],
    );
  }

  /// `Delete Card`
  String get deleteCard {
    return Intl.message('Delete Card', name: 'deleteCard', desc: '', args: []);
  }

  /// `Are you sure you want to delete \nthis card?`
  String get areYouSureDeleteCard {
    return Intl.message(
      'Are you sure you want to delete \nthis card?',
      name: 'areYouSureDeleteCard',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Add new card`
  String get addNewCard {
    return Intl.message('Add new card', name: 'addNewCard', desc: '', args: []);
  }

  /// `No payment cards saved yet`
  String get noPaymentCardsSaved {
    return Intl.message(
      'No payment cards saved yet',
      name: 'noPaymentCardsSaved',
      desc: '',
      args: [],
    );
  }

  /// `Add a card to continue with payment`
  String get addCardToContinue {
    return Intl.message(
      'Add a card to continue with payment',
      name: 'addCardToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Card number is required`
  String get cardNumberRequired {
    return Intl.message(
      'Card number is required',
      name: 'cardNumberRequired',
      desc: '',
      args: [],
    );
  }

  /// `Card number must be 16 digits`
  String get cardNumberMustBe {
    return Intl.message(
      'Card number must be 16 digits',
      name: 'cardNumberMustBe',
      desc: '',
      args: [],
    );
  }

  /// `Card holder name is required`
  String get cardHolderNameRequired {
    return Intl.message(
      'Card holder name is required',
      name: 'cardHolderNameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message('Required', name: 'required', desc: '', args: []);
  }

  /// `Invalid`
  String get invalid {
    return Intl.message('Invalid', name: 'invalid', desc: '', args: []);
  }

  /// `CVV is required`
  String get CVVRequired {
    return Intl.message(
      'CVV is required',
      name: 'CVVRequired',
      desc: '',
      args: [],
    );
  }

  /// `CVV must be 3 or 4 digits`
  String get CVVMustBe {
    return Intl.message(
      'CVV must be 3 or 4 digits',
      name: 'CVVMustBe',
      desc: '',
      args: [],
    );
  }

  /// `Payment method:`
  String get paymentmethod {
    return Intl.message(
      'Payment method:',
      name: 'paymentmethod',
      desc: '',
      args: [],
    );
  }

  /// `Card added Succefully`
  String get cardAddedSuccefully {
    return Intl.message(
      'Card added Succefully',
      name: 'cardAddedSuccefully',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred`
  String get anErrorOccurred {
    return Intl.message(
      'An error occurred',
      name: 'anErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Add Card`
  String get addCard {
    return Intl.message('Add Card', name: 'addCard', desc: '', args: []);
  }

  /// `Card Holder Name`
  String get cardHolderName {
    return Intl.message(
      'Card Holder Name',
      name: 'cardHolderName',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Card Number`
  String get cardNumber {
    return Intl.message('Card Number', name: 'cardNumber', desc: '', args: []);
  }

  /// `MM`
  String get MM {
    return Intl.message('MM', name: 'MM', desc: '', args: []);
  }

  /// `YY`
  String get YY {
    return Intl.message('YY', name: 'YY', desc: '', args: []);
  }

  /// `CVV`
  String get CVV {
    return Intl.message('CVV', name: 'CVV', desc: '', args: []);
  }

  /// `Send Money`
  String get sendMoney {
    return Intl.message('Send Money', name: 'sendMoney', desc: '', args: []);
  }

  /// `Status`
  String get status {
    return Intl.message('Status', name: 'status', desc: '', args: []);
  }

  /// `Successful`
  String get successful {
    return Intl.message('Successful', name: 'successful', desc: '', args: []);
  }

  /// `Sender`
  String get sender {
    return Intl.message('Sender', name: 'sender', desc: '', args: []);
  }

  /// `Date`
  String get date {
    return Intl.message('Date', name: 'date', desc: '', args: []);
  }

  /// `Invoice`
  String get invoice {
    return Intl.message('Invoice', name: 'invoice', desc: '', args: []);
  }

  /// `Back Home`
  String get backHome {
    return Intl.message('Back Home', name: 'backHome', desc: '', args: []);
  }

  /// `Specialty`
  String get specialty {
    return Intl.message('Specialty', name: 'specialty', desc: '', args: []);
  }

  /// `Governorate`
  String get governorate {
    return Intl.message('Governorate', name: 'governorate', desc: '', args: []);
  }

  /// `City`
  String get city {
    return Intl.message('City', name: 'city', desc: '', args: []);
  }

  /// `Entity`
  String get Entity {
    return Intl.message('Entity', name: 'Entity', desc: '', args: []);
  }

  /// `Filter`
  String get Filter {
    return Intl.message('Filter', name: 'Filter', desc: '', args: []);
  }

  /// `Fees`
  String get fees {
    return Intl.message('Fees', name: 'fees', desc: '', args: []);
  }

  /// `From`
  String get from {
    return Intl.message('From', name: 'from', desc: '', args: []);
  }

  /// `To`
  String get to {
    return Intl.message('To', name: 'to', desc: '', args: []);
  }

  /// `Select`
  String get select {
    return Intl.message('Select', name: 'select', desc: '', args: []);
  }

  /// `Medicones`
  String get medicones {
    return Intl.message('Medicones', name: 'medicones', desc: '', args: []);
  }

  /// `Please, Click Again!`
  String get pleaseClickAgain {
    return Intl.message(
      'Please, Click Again!',
      name: 'pleaseClickAgain',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Please select a profile picture`
  String get pleaseSelectProfilePicture {
    return Intl.message(
      'Please select a profile picture',
      name: 'pleaseSelectProfilePicture',
      desc: '',
      args: [],
    );
  }

  /// `Profile updated successfully!`
  String get profileUpdatedSuccessfully {
    return Intl.message(
      'Profile updated successfully!',
      name: 'profileUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message('Phone', name: 'phone', desc: '', args: []);
  }

  /// `Country`
  String get country {
    return Intl.message('Country', name: 'country', desc: '', args: []);
  }

  /// `Save Changes`
  String get saveChanges {
    return Intl.message(
      'Save Changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `This appointment will no\nlonger be saved.`
  String get thisAppointmentNoLongerSaved {
    return Intl.message(
      'This appointment will no\nlonger be saved.',
      name: 'thisAppointmentNoLongerSaved',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming`
  String get upcoming {
    return Intl.message('Upcoming', name: 'upcoming', desc: '', args: []);
  }

  /// `Completed`
  String get completed {
    return Intl.message('Completed', name: 'completed', desc: '', args: []);
  }

  /// `Canceled`
  String get Canceled {
    return Intl.message('Canceled', name: 'Canceled', desc: '', args: []);
  }

  /// `No Appointments In Upcoming`
  String get noAppointmentsUpcoming {
    return Intl.message(
      'No Appointments In Upcoming',
      name: 'noAppointmentsUpcoming',
      desc: '',
      args: [],
    );
  }

  /// `No Appointments Completed Yet`
  String get noAppointmentsCompleted {
    return Intl.message(
      'No Appointments Completed Yet',
      name: 'noAppointmentsCompleted',
      desc: '',
      args: [],
    );
  }

  /// `No Appointments Canceled Yet`
  String get noAppointmentsCanceled {
    return Intl.message(
      'No Appointments Canceled Yet',
      name: 'noAppointmentsCanceled',
      desc: '',
      args: [],
    );
  }

  /// `No upcoming appointments for this date`
  String get noUpcomingAppointmentsForDate {
    return Intl.message(
      'No upcoming appointments for this date',
      name: 'noUpcomingAppointmentsForDate',
      desc: '',
      args: [],
    );
  }

  /// `No completed appointments for this date`
  String get noCompletedAppointmentsForDate {
    return Intl.message(
      'No completed appointments for this date',
      name: 'noCompletedAppointmentsForDate',
      desc: '',
      args: [],
    );
  }

  /// `No canceled appointments for this date`
  String get noCanceledAppointmentsForDate {
    return Intl.message(
      'No canceled appointments for this date',
      name: 'noCanceledAppointmentsForDate',
      desc: '',
      args: [],
    );
  }

  /// `Login Successfully`
  String get loginSuccessfully {
    return Intl.message(
      'Login Successfully',
      name: 'loginSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
  }

  /// `Email is required`
  String get emailRequired {
    return Intl.message(
      'Email is required',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email`
  String get enterValidEmail {
    return Intl.message(
      'Enter a valid email',
      name: 'enterValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Password is required`
  String get passwordRequired {
    return Intl.message(
      'Password is required',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get passwordMustBe {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'passwordMustBe',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get forgetPassword {
    return Intl.message(
      'Forget Password?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `OR`
  String get OR {
    return Intl.message('OR', name: 'OR', desc: '', args: []);
  }

  /// `Doctor Login`
  String get doctorLogin {
    return Intl.message(
      'Doctor Login',
      name: 'doctorLogin',
      desc: '',
      args: [],
    );
  }

  /// `New to Tabibi?`
  String get newToTabibi {
    return Intl.message(
      'New to Tabibi?',
      name: 'newToTabibi',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get Register {
    return Intl.message('Register', name: 'Register', desc: '', args: []);
  }

  /// `SignUp Successfully`
  String get signUpSuccessfully {
    return Intl.message(
      'SignUp Successfully',
      name: 'signUpSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Name is required`
  String get nameRequired {
    return Intl.message(
      'Name is required',
      name: 'nameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Name must be at least 4 characters`
  String get nameMustBe {
    return Intl.message(
      'Name must be at least 4 characters',
      name: 'nameMustBe',
      desc: '',
      args: [],
    );
  }

  /// `Phone is required`
  String get phoneRequired {
    return Intl.message(
      'Phone is required',
      name: 'phoneRequired',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password is required`
  String get confirmPasswordRequired {
    return Intl.message(
      'Confirm Password is required',
      name: 'confirmPasswordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get Loading {
    return Intl.message('Loading...', name: 'Loading', desc: '', args: []);
  }

  /// `Already have an account? `
  String get alreadyHaveAnccount {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAnccount',
      desc: '',
      args: [],
    );
  }

  /// `Reset Passwrod`
  String get resetPasswrod {
    return Intl.message(
      'Reset Passwrod',
      name: 'resetPasswrod',
      desc: '',
      args: [],
    );
  }

  /// `Make sure to save the password in password manager`
  String get makeSureSavePassword {
    return Intl.message(
      'Make sure to save the password in password manager',
      name: 'makeSureSavePassword',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message('Reset', name: 'reset', desc: '', args: []);
  }

  /// `OTP Verification`
  String get OTPVerification {
    return Intl.message(
      'OTP Verification',
      name: 'OTPVerification',
      desc: '',
      args: [],
    );
  }

  /// `The OTP code sent to `
  String get theOTPCodeSentTo {
    return Intl.message(
      'The OTP code sent to ',
      name: 'theOTPCodeSentTo',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t get a code?`
  String get didntGetCode {
    return Intl.message(
      'Didn’t get a code?',
      name: 'didntGetCode',
      desc: '',
      args: [],
    );
  }

  /// `Send Again`
  String get sendAgain {
    return Intl.message('Send Again', name: 'sendAgain', desc: '', args: []);
  }

  /// `Forget Password`
  String get ForgetPassword {
    return Intl.message(
      'Forget Password',
      name: 'ForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry! it happens. Please enter the address associated with your account.`
  String get dontWorryItHappens {
    return Intl.message(
      'Don\'t worry! it happens. Please enter the address associated with your account.',
      name: 'dontWorryItHappens',
      desc: '',
      args: [],
    );
  }

  /// `Send Mail`
  String get sendMail {
    return Intl.message('Send Mail', name: 'sendMail', desc: '', args: []);
  }

  /// `Try another way`
  String get tryAnotherWay {
    return Intl.message(
      'Try another way',
      name: 'tryAnotherWay',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Set Password`
  String get setPassword {
    return Intl.message(
      'Set Password',
      name: 'setPassword',
      desc: '',
      args: [],
    );
  }

  /// `Welcome To\nTabibi`
  String get onBoardingFirstTitle {
    return Intl.message(
      'Welcome To\nTabibi',
      name: 'onBoardingFirstTitle',
      desc: '',
      args: [],
    );
  }

  /// `Easy\nAppointments`
  String get onBoardingSecondTitle {
    return Intl.message(
      'Easy\nAppointments',
      name: 'onBoardingSecondTitle',
      desc: '',
      args: [],
    );
  }

  /// `Virtual Care &\nMonitoring`
  String get onBoardingThirdTitle {
    return Intl.message(
      'Virtual Care &\nMonitoring',
      name: 'onBoardingThirdTitle',
      desc: '',
      args: [],
    );
  }

  /// `Secure & Smart\nHealthcare`
  String get onBoardingFourthTitle {
    return Intl.message(
      'Secure & Smart\nHealthcare',
      name: 'onBoardingFourthTitle',
      desc: '',
      args: [],
    );
  }

  /// `Get seamless access to doctors, medical records, and real-time health tracking—all in one app.`
  String get onBoardingFirstSub {
    return Intl.message(
      'Get seamless access to doctors, medical records, and real-time health tracking—all in one app.',
      name: 'onBoardingFirstSub',
      desc: '',
      args: [],
    );
  }

  /// `Find top doctors, schedule online or in-person visits, and manage your healthcare effortlessly.`
  String get onBoardingSecondSub {
    return Intl.message(
      'Find top doctors, schedule online or in-person visits, and manage your healthcare effortlessly.',
      name: 'onBoardingSecondSub',
      desc: '',
      args: [],
    );
  }

  /// `Connect with doctors via secure video calls and monitor your vitals in real-time with Tabibi Cube.`
  String get onBoardingThirdSub {
    return Intl.message(
      'Connect with doctors via secure video calls and monitor your vitals in real-time with Tabibi Cube.',
      name: 'onBoardingThirdSub',
      desc: '',
      args: [],
    );
  }

  /// `Access medical records, receive health alerts, and enjoy secure payments—all with 99.9% uptime.`
  String get onBoardingFourthSub {
    return Intl.message(
      'Access medical records, receive health alerts, and enjoy secure payments—all with 99.9% uptime.',
      name: 'onBoardingFourthSub',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message('Get Started', name: 'getStarted', desc: '', args: []);
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Phone must be at least 11 characters`
  String get phoneMustBe {
    return Intl.message(
      'Phone must be at least 11 characters',
      name: 'phoneMustBe',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message('Apply', name: 'apply', desc: '', args: []);
  }

  /// `Clear`
  String get clear {
    return Intl.message('Clear', name: 'clear', desc: '', args: []);
  }

  /// `All`
  String get any {
    return Intl.message('All', name: 'any', desc: '', args: []);
  }

  /// `Type Message..`
  String get typeMessage {
    return Intl.message(
      'Type Message..',
      name: 'typeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Consult`
  String get Consult {
    return Intl.message('Consult', name: 'Consult', desc: '', args: []);
  }

  /// `LogOut`
  String get logOut {
    return Intl.message('LogOut', name: 'logOut', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
