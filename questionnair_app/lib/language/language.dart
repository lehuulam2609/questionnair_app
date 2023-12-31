import 'package:get/get.dart';
import 'package:questionnair_app/language/en.dart';
import 'package:questionnair_app/utils/app_constant.dart';

class LanguageKey {
  static const String myMedica = 'my_medica';

  /// Common
  static const error = 'error';
  static const questionnair = 'questionnair';
  static const addQuestionnair = 'add_questionnair';
  static const addNewQuestion = 'addNewQuestion';
  static const checkbox = 'checkbox';
  static const paragraph = 'paragraph';
  static const typeQuestion = 'type_question';
  static const addAnotherAnswer = 'add_another_answer';
  static const requiredText = 'required_text';
  static const allowText = 'allow_text';
  static const titleQuestion = 'titleQuestion';
  static const reviewMyAnswer = 'review_my_answer';
  static const questionnairDetail = 'questionnair_detail';
  static const maximumAnswer = '5maximumAnswer';

  // Login
  static const login = 'login';
  static const emailAddress = 'email_address';
  static const emailAddressPlaceHolder = 'email_address_place_holder';
  static const emailAddressLoginPlaceHolder =
      'email_address_login_place_holder';
  static const password = 'password';
  static const passwordPlaceHolder = 'password_place_holder';
  static const forgotPassWord = 'forgot_password';
  static const startWithoutRegistration = 'start_without_registration';
  static const signUp = 'sign_up';
  static const cannotSignIn = 'cannot_sign_in';
  static const messageLoginFailure = 'message_login_failure';
  static const passwordRequirement = 'password_requirement';
  static const passwordStrong = 'password_strong';
  static const passwordIncorrectFormat = 'passwordIncorrectFormat';

  // Message error
  static const emailInvalid = 'email_invalid';
  static const passwordInvalid = 'password_invalid';
  static const anErrorOccured = 'an_error_occured';
  static const invalidAccess = 'your_access_is_invalid';
  static const expiredAccess = 'your_access_is_expired';
  static const badInternetConnection = 'network_error';
  static const somethingWentWrong = 'something_went_wrong';
  static const enterPassword = 'enter_password';
  static const reEnterPassword = 're_enter_password';

  // Error
  static const defaultApiError = 'default_api_error';
  static const apiTimeoutError = 'api_timeout_error';
  static const apiCancelError = 'api_cancel_error';
  static const apiOtherError = 'api_other_error';
  static const errorCallNotSupport = 'error_call_not_support';
  static const errorPopupNoticeFail = 'error_popup_notice_fail';

  /// Register
  static const register = 'register';
  static const emailRegisterTitle = 'email_register_title';
  static const emailRegisterDescription = 'email_register_description';
  static const passwordRegisterDescription = 'password_register_description';
  static const emailRegister = 'email_register';
  static const emalRegisterPlaceHolder = 'email_register_place_holder';
  static const passwordRegister = 'password_register';
  static const minCharacters = 'min_characters';
  static const passwordValid = 'password_valid';
  static const passwordErrorSameEmail = 'password_error_same_email';
  static const passwordIncludeSymbols = 'password_include_symbols';
  static const messagePolicy = 'message_policy';
  static const termsOfService = 'terms_of_service';
  static const privacyPolicy = 'privacy_policy';
  static const titleDialogRegister = 'title_dialog_register';
  static const contentDialogRegister = 'content_dialog_register';
  static const newRegister = 'new_register';
  static const emailRegisterError = 'email_register_error';
  static const emailInvalidError = 'emailInvalidError';
  static const emailMatchError = 'emailMatchError';
  static const emailExistTitle = 'email_exist_title';

  /// InviteCode
  static const invitationCode = 'invitation_code';
  static const companyNumber = 'company_number';
  static const employeeNumber = 'employee_number';
  static const textValid = 'text_valid';
  static const companyNumberHintText = 'company_number_hint_text';
  static const employeeNumberHintText = 'employee_number_hint_text';
  static const passwordCondition = 'password_condition';
  static const inviteCodeNote1 = 'invite_code_note_1';
  static const inviteCodeNote2 = 'invite_code_note_2';
  static const pleaseContactForDetail = 'please_contact_for_detail';
  static const showError = 'show_error';
  static const lessThan8Characters = 'less_than_8_characters';
  static const haveSpecialCharacter = 'have_specialc_haracter';
  static const errorCompanyNumberMessage = 'error_company_number_message';
  static const errorEmployeeNumberMessage = 'error_employee_number_message';

  //Notification
  static const notification = 'notification';
  static const toYou = 'to_you';
  static const fromOperation = 'from_operation';
  static const noNotificationYet = 'no_notification_yet';
  static const makeAllAsRead = 'make_all_as_read';
  static const viewDetails = 'view_details';

  /// Booking
  static const viewAllReservation = 'view_all_reservation';
  static const nextReservation = 'next_reservation';
  static const timeReservation = 'time_reservation';
  static const symptomReservation = 'symptom_reservation';
  static const joinRoomBefore15Mins = 'join_room_before_15_mins';
  static const medicalNote = 'medical_note';
  static const notRegisterMedical = 'not_register_medical';
  static const registerMedical = 'register_medical';
  static const timeErrorCalendar = 'time_error_calendar';

  /// Room List
  static const underReservation = 'under_reservation';
  static const pastVisits = 'past_visits';

  /// Common
  static const back = 'back';
  static const cancel = 'cancel';
  static const change = 'change';
  static const String ok = 'ok';
  static const yes = 'yes';
  static const no = 'no';
  static const save = 'save';
  static const previous = 'previous';
  static const delete = 'delete';
  static const deleteAbbr = 'delete_abbr';
  static const okUpperCase = 'ok_upper_case';
  static const pleaseWait = 'please_wait';
  static const invalidImage = 'invalid_image';
  static const shortest = 'shortest';
  static const areYouSureToDelete = 'are_you_sure_to_delete';
  static const setting = 'setting';

  /// Video call
  static const audio = 'audio';
  static const videoScreen = 'video_screen';
  static const shareScreen = 'share_screen';
  static const chat = 'chat';
  static const endCall = 'end_call';
  static const next = 'next';
  static const terminalPharmacy = 'terminal_pharmacy';
  static const on = 'on';
  static const off = 'off';
  static const doctor = 'doctor';
  static const waitingDescription = 'waiting_description';
  static const prepareDescription = 'prepare_description';
  static const disconnectDescription = 'disconnect_description';
  static const prepareDescriptionPharmacy = 'prepare_description_pharmacy';

  /// those value below are the value for booking view
  static const String appointmentWithPatient = 'appointment_with_patient';
  static const String reservationHistory = 'reservation_history';
  static const String noReservation = 'no_reservation';
  static const String onlineMedicalTreatment = 'online_medical_treatment';
  static const String generalMedicalAppointment = 'general_medical_appointment';
  static const String selectDiagnosticContent = 'select_diagnostic_content';
  static const String selectStartDatetimeTreatment =
      'select_start_datetime_treatment';
  static const String reserve = 'reserve';
  static const String confirmBooking = 'confirm_booking';
  static const String changeTimeBooking = 'change_time_booking';
  static const String cancelReserve = 'cancel_reserve';
  static const String diagnosisTitle = 'diagnosis_title';
  static const String treatmentDatetimeTitle = 'treatment_datetime_title';
  static const String confirmReservation = 'confirm_reservation';
  static const String nextWeek = 'next_week';
  static const String previousWeek = 'previous_week';
  static const String nextMonth = 'next_month';
  static const String previousMonth = 'previous_month';
  static const String thisMonth = 'this_month';
  static const String instructionSubmitDocTitle =
      'instruction_submit_doc_title';
  static const String instructionSubmitDocSubTitle =
      'instruction_submit_doc_sub_title';
  static const String instructionSubmitDocNotice =
      'instruction_submit_doc_notice';
  static const String instructionSubmitDocSteps =
      'instruction_submit_doc_steps';
  static const String documentBilling = 'document_billing';
  static const String receiptPharmacy = 'receipt_pharmacy';
  static const String receiptHospital = 'receipt_hospital';
  static const String downloadDes = 'document_des';
  static const String openFile = 'open_file';
  static const String downloadFile = 'download_file';
  static const String download = 'download';
  static const String share = 'share';
  static const String downloadFail = 'download_fail';
  static const String permissionDownloadMessage = 'permission_download_message';
  static const String accountingInProgress = 'accounting_in_progress';
  static const String processing = 'processing';

  /// those value below are for select diagnosis bottom sheet
  static const String selectSymptom = 'select_symptom';
  static const String selectVisitTypeTitle = 'select_visit_type_title';
  static const String firstVisit = 'firstVisit';
  static const String reVisit = 'reVisit';
  static const String selectDiagnosisTitle = 'select_diagnosis_title';
  static const String selectSymptomTitle = 'select_symptom_title';
  static const String highBloodPressure = 'high_blood_pressure';
  static const String highUricAcid = 'high_uric_acid';
  static const String noteSymptom = 'note_symptom';

  /// those value below are for select treatment time bottom sheet
  static const String selectTreatmentTimeTitle = 'select_treatment_time_title';
  static const String specifyDate = 'specify_date';
  static const String dateTime = 'date_time';
  static const String latestTime = 'latest_time';
  static const String selectDateTime = 'select_datetime';
  static const String returnSelectSymptom = 'return_select_symptom';
  static const String notFoundWorkingShift = 'not_found_working_shift';
  static const String prescriptionExpirationDate =
      'prescription_expiration_date';
  static const String selectMonth = 'select_month';

  /// those value below are for confirm
  static const String reservationCompleted = 'reservation_completed';
  static const String clinicReservation = 'reservation';
  static const String thanksForBooking = 'thanks_for_booking';
  static const String generalPractice = 'general_practice';
  static const String clinic = 'clinic';
  static const String sendToGoogleCalendar = 'send_to_google_calendar';
  static const String sendToOutlookCalendar = 'send_to_outlook_calendar';
  static const String sendToICloudCalendar = 'send_to_icloud_calendar';
  static const String enterWaitingRoom = 'enter_waiting_room';
  static const String toTheTop = 'to_the_top';
  static const String medicines = 'medicines';
  static const String medicinesDescription = 'medicines_description';
  static const String hospitalAppointment = 'hospital_appointment';
  static const String bookingConfirmation = 'booking_confirmation';
  static const String bookingCanNotChangeMessage =
      'booking_can_not_change_message';
  static const String bookingErrorMessage1 = 'booking_error_message_1';
  static const String bookingErrorMessage2 = 'booking_error_message_2';
  static const String bookingErrorMessage3 = 'booking_error_message_3';
  static const String addToCalendar = 'add_to_calendar';
  static const String preExaminationPreparation = 'pre_examination_preparation';
  static const String preExaminationDescription1 =
      'pre_examination_description1';
  static const String preExaminationDescription2 =
      'pre_examination_description2';
  static const String preExaminationDescription3 =
      'pre_examination_description3';
  static const String arbitrarily = 'arbitrarily';
  static const String submitDocument = 'submit_document';
  static const String advanceDocument = 'advance_document';
  static const String dayExamination = 'day_examination';
  static const String employeeMedicalOffice = 'employee_medical_office';
  static const String bookingDone = 'booking_done';
  static const String permissionCalendarGrant = 'permission_calendar_grant';

  /// Error Code
  static const code203 = 'Non-authoritative Information';
  static const code204 = 'No Content';
  static const code205 = 'Reset Content';
  static const code206 = 'Partial Content';
  static const code400 = 'Bad Request';
  static const code401 = 'Unauthorized';
  static const code402 = 'Payment Required';
  static const code403 = 'Forbidden';
  static const code404 = 'Not Found';
  static const code405 = 'Method Not Allowed';
  static const code406 = 'Not Acceptable';
  static const code407 = 'Proxy Authentication Required';
  static const code408 = 'Request Timeout';
  static const code409 = 'Conflict';
  static const code500 = 'Internal Server Error';
  static const code501 = 'Not Implemented';
  static const code502 = 'Bad Gateway';
  static const code503 = 'Service Unavailable';
  static const code504 = 'Gateway Timeout';
  static const code505 = 'HTTP Version Not Supported';

  // Day of week
  static const monAbbr = 'mon';
  static const tueAbbr = 'tue';
  static const wedAbbr = 'wed';
  static const thuAbbr = 'thu';
  static const friAbbr = 'fri';
  static const satAbbr = 'sat';
  static const sunAbbr = 'sun';

  /// Day
  static const today = 'today';
  static const tomorrow = 'tomorrow';
  static const dayAfterTomorrow = 'day_AfterTomorrow';

  /// Booking status
  static const bookingStatus = 'booking_status';
  static const messageBookingStatus = 'message_booking_status';
  static const accountAndLoginInformation = 'account_login_information';
  static const accountInformation = 'account_information';
  static const loginInformation = 'login_information';
  static const basicInformation = 'basic_information';
  static const basicInfo = 'basic_info';
  static const paymentMethod = 'payment_method';
  static const insuranceCard = 'insurance_card';
  static const registerBooking = 'register_booking';
  static const done = 'done';
  static const notYet = 'not_yet';
  static const hasUpdated = 'has_updated';
  static const loginSuggestion = 'login_suggestion';
  static const loginButtonStatus = 'login_button_status';
  static const goToLogin = 'go_to_login';

  /// Chat
  static const messageInChat = 'message_in_chat';
  static const sendMessage = 'send_message';

  /// Watting room
  static const examinationWattingRoom = 'examination_waiting_room';
  static const bookingTime = 'booking_time';
  static const wattingRoomFirstVisit = 'watting_room_first_visit';
  static const personInCharge = 'person_in_charge';
  static const enterTheExaminationRoom = 'enter_the_examination_room';
  static const estimatedCallTime = 'estimated_call_time';
  static const conditionJoinRoom = 'condition_room';
  static const conditionJoinRoomWithBreakLine =
      'condition_room_with_break_line';
  static const fillQuestion = 'fill_question';
  static const submitInsuranceCard = 'submit_insurance_card';
  static const goToTopPage = 'go_to_top_page';
  static const goToHospitalTopPage = 'go_to_hospital_top_page';
  static const goToPharmacyTopPage = 'go_to_pharmacy_top_page';
  static const advertisementTitle = 'advertisement_title';
  static const examPreparation = 'exam_preparation';
  static const waitingRoomSymptom = 'waiting_room_symptom';
  static const waitingRoomDate = 'waiting_room_date';
  static const waitingRoomDoctor = 'waiting_room_doctor';
  static const submitDocumentTitle = 'submit_document_title';
  static const submitDocumentSubtitle = 'submit_document_subtitle';
  static const optional = 'optional';
  static const notHaveQuestionnaire = 'not_have_questionnaire';
  static const fillAnswer = 'fill_answer';
  static const resubmitInsuranceSubtitle = 'resubmit_insurance_subtitle';
  static const undecided = 'undecided';

  /// pharmacy waiting room
  static const pharmacyWaitingRoom = 'pharmacy_waiting_room';
  static const currentWaitingList = 'currentWaitingList';
  static const people = 'people';
  static const receiveMedication = 'receiveMedication';
  static const preparationBeforeMedication = 'preparationBeforeMedication ';
  static const joinRoom5MinBeforeStart = 'join_room_5_min_before_start';

  /// Verify email
  static const authenticationSuccessful = 'authentication_successful';
  static const messageSuccessful = 'message_successful';
  static const authenticationFailure = 'authentication_failure';
  static const messageFailure = 'message_failure';

  /// advertisement
  static const advertisement = 'advertisement';
  static const flatRatePack = 'flat_rate_pack';
  static const timeToCall = 'time_to_call';
  static const goBackWaitingRoom = 'go_back_waiting_room';

  /// questionnaire
  static const hospitalInterview = 'hospital_interview';
  static const generalInternalMedicine = 'general_internal_medicine';
  static const symptomQuestion = 'symptom_question';
  static const addImage = 'add_image';
  static const addImageTitle = 'add_image_title';
  static const addImageDescription = 'add_image_description';
  static const completeQuestionnaire = 'complete_questionnaire';
  static const returnWaitingRoom = 'return_waiting_room';
  static const imageAndFile = 'image_and_file';
  static const selectFile = 'select_file';
  static const deleteImageTitle = 'delete_image_title';
  static const deleteImagePDF = 'delete_image_pdf';
  static const deleteImageButton = 'delete_image_button';
  static const notDeleteImageButton = 'not_delete_image_button';
  static const errorFileUploadOver = 'error_file_upload_over';
  static const errorImageUploadType = 'error_image_upload_type';
  static const errorFileTitle = 'error_file_title';
  static const errorSurpassCountQuestion = 'error_surpass_count_question';

  /// Account Information
  static const errorPasswordLimitation = 'error_password_limitation';
  static const errorPasswordRequirement = 'error_password_requirement';
  static const errorPasswordSpecialCharacter =
      'error_password_special_character';
  static const errorPasswordAndConfirmNotMatch =
      'error_password_and_confirm_not_match';
  static const errorPasswordTitle = 'error_password_title';
  static const errorEmailTitle = 'error_email_title';
  static const oldPasswordTitle = 'old_password_title';
  static const newPasswordTitle = 'new_password_title';
  static const confirmPasswordTitle = 'confirm_password_title';
  static const confirmPasswordRegisterPlaceHolder =
      'confirm_password_register_place_holder';
  static const passwordPlaceHolderDot = 'password_place_holder_dot';
  static const changePasswordTitle = 'change_password_title';
  static const changePasswordError = 'change_password_error';
  static const newPassword = 'new_password';
  static const registerChange = 'register_change';
  static const emailAddressTitle = 'email_address_title';
  static const emailAddressMenuItem = 'email_address_menu_item';
  static const logout = 'logout';
  static const deactive = 'deactive';
  static const withdrawal = 'withdrawal';
  static const withdrawalMessage = 'withdrawalMessage';
  static const withdrawalMessageNote = 'withdrawalMessageNote';
  static const accountInformationTitle = 'account_information_title';
  static const currentEmail = 'current_email';
  static const newEmail = 'new_email';
  static const toChangeEmail = 'to_change_email';
  static const toChangeEmailMessage = 'to_change_email_message';
  static const send = 'send';
  static const changeMessage = 'change_message';
  static const boldEmail = 'bold_email';
  static const faq = 'faq';
  static const district = 'district';
  static const searchAgain = 'search_again';
  static const errorZipCodeOther = 'error_zip_code_other';
  static const errorZipCodeEmptyNotExist = 'error_zip_code_empty_not_exist';
  static const logoutConfirmButton = 'logout_confirm_button';
  static const logoutConfirmTitle = 'logout_confirm_title';
  static const logoutConfirmMessage = 'logout_confirm_message';

  /// reservation
  static const reservationList = 'reservation_list';
  static const openWaitingRoom = 'open_waiting_room';
  static const doctorInCharge = 'doctor_in_charge';
  static const billedAmount = 'billed_amount';
  static const medicalDetail = 'medical_detail';
  static const packageNumber = 'package_number';
  static const completion = 'completion';
  static const noDoctorAppointment = 'no_doctor_appointment';
  static const hospital = 'hospital';
  static const pharmacy = 'pharmacy';
  static const organization = 'organization';
  static const pharmacist = 'pharmacist';
  static const wouldLikeToDelete = 'would_like_to_delete';
  static const fillQuestionnaire = 'fill_questionnaire';
  static const canceledHospital = 'canceled_hospital';
  static const canceledHospitalHand = 'canceledHospitalHand';
  static const canceledPharmacy = 'canceled_pharmacy';
  static const hospitalOrganization = 'hospital_organization';
  static const pharmacyOrganization = 'pharmacy_organization';

  /// Basic information
  static const nameTitle = 'name_title';
  static const kanjiNameMenuTitle = 'kanji_name_menu_title';
  static const katakanaNameMenuTitle = 'katakana_name_menu_title';
  static const dobMenuTitle = 'dob_menu_title';
  static const genderMenuTitle = 'gender_menu_title';
  static const postalCodeMenuTitle = 'postal_code_menu_title';
  static const addressMenuTitle = 'address_menu_title';
  static const phoneMenuTitle = 'phone_menu_title';
  static const deliveryAddressMenuTitle = 'delivery_address_menu_title';
  static const basicInformationPlaceHolder = 'basic_information_place_holder';
  static const check = 'check';
  static const prefectures = 'prefectures';
  static const municipalities = 'municipalities';
  static const townNameAddress = 'town_name_address';
  static const issueName = 'issue_name';
  static const buildingName = 'building_name';
  static const deliveryAddress = 'delivery_address';
  static const sameAddress = 'same_address';
  static const differenceAddress = 'difference_address';
  static const male = 'male';
  static const female = 'female';
  static const genderDoesNotShow = 'gender_does_not_show';
  static const other = 'other';
  static const kanjiFName = 'kanji_first_name';
  static const kanjiLName = 'kanji_lasst_name';
  static const katakanaFName = 'katakana_first_name';
  static const katakanaLName = 'katakana_last_name';
  static const newPhoneTitle = 'new_phone_title';
  static const errorAddressTitle = 'error_address_title';
  static const errorPostalCodeNotBlank = 'error_postal_code_not_blank';
  static const errorInvalidPostalCode = 'error_invalid_postal_code';
  static const errorAddressNotBlank = 'error_address_not_blank';
  static const errorNameTitle = 'error_name_title';
  static const errorNameNotBlank = 'error_name_not_blank';
  static const errorPhoneTitle = 'error_phone_title';
  static const errorPhoneNotBlank = 'error_phone_not_blank';
  static const errorNewPhoneNotBlank = 'error_new_phone_not_blank';
  static const errorInvalidNewPhone = 'error_invalid_new_phone';
  static const errorMoreThan11 = 'error_more_than_11';
  static const errorInvalidOldPhone = 'error_old_phone_not_match';
  static const otpSent = 'otp_sent';
  static const errorWrongOTP = 'otp_wrong';
  static const errorExpiredOTP = 'otp_expired';
  static const notFoundPostalCode = 'not_found_postal_code';
  static const errorMessageWrongOTP = 'error_message_wrong_otp';
  static const selectBlock = 'select_block';
  static const otherAddress = 'other_address';
  static const prefecturePlaceHolder = 'prefecture_placeholder';
  static const chooseDistrict = 'choose_district';
  static const addressesNotListed = 'addresses_not_listed';
  static const addressNotCorrect = 'addresses_not_correct';
  static const buildingNotCorrectFormat = 'building_not_correct_format';
  static const errorKanjiFName = 'error_kanji_f_name';
  static const errorKanjiLName = 'error_kanji_l_name';
  static const errorKanaFName = 'error_kana_f_name';
  static const errorKanaLName = 'error_kana_l_name';

  /// delete appointment
  static const appointmentNotFound = 'appointment_not_found';
  static const cannotCancelAppointment = 'cannot_cancel_appointment';
  static const deleteConfirmTitle = 'delete_confirm_title';
  static const deleteConfirmDescription = 'delete_confirm_description';
  static const notCancelAppointment = 'not_cancel_appointment';
  static const cancelAppointment = 'cancel_appointment';
  static const cancellationReason = 'cancellation_reason';
  static const tellTheReason = 'tell_the_reason';

  /// complete
  static const notPrescribed = 'not_Prescribed';
  static const prescribed = 'prescribed';
  static const goToPharmacy = 'go_to_pharmacy';
  static const examinationComplete = 'examination_complete';
  static const thanksForExaminationComplete = 'thanks_for_examination_complete';
  static const examinationEnd = 'examination_end';
  static const bookingLaterPharmacistTitle = 'booking_pharmacist_title';
  static const bookingLaterPharmacistMessage =
      'booking_later_pharmacist_message';
  static const bookingPharmacistButton = 'booking_later_pharmacist_button';
  static const denyBookingPharmacistTitle = 'deny_booking_pharmacist_title';
  static const denyBookingPharmacistMessage = 'deny_booking_pharmacist_message';
  static const denyBookingPharmacistButton = 'deny_booking_pharmacist_button';
  static const topCompleteConfirmTitle = 'top_complete_confirm_title';
  static const topCompleteConfirmMessage = 'top_complete_confirm_message';
  static const denyCompleteConfirmTitle = 'deny_complete_confirm_title';
  static const denyCompleteConfirmMessage = 'deny_complete_confirm_message';
  static const bookingNowCompleteConfirmTitle =
      'booking_now_complete_confirm_title';
  static const bookingNowCompleteConfirmMessage =
      'booking_now_complete_confirm_message';
  static const returnHospital = 'return_hospital';
  static const pleaseContactUs = 'please_contact_us';

  ///update appointment
  static const updateDescription = 'update_description';
  static const changeBefore = 'change_before';
  static const changeAfter = 'change_after';
  static const notChange = 'not_change';
  static const changeAppointment = 'change_appointment';

  /// Insurance
  static const required = 'required';
  static const healthInsurance = 'health_insurance';
  static const frontHealthInsurance = 'front_health_insurance';
  static const backHealthInsurance = 'back_health_insurance';
  static const uploadInsurance = 'upload_insurance';
  static const numberHealthInsurance = 'number_health_insurance';
  static const takeAnotherImage = 'take_another_image';
  static const insuranceInstruction = 'insurance_instruction';
  static const selectImageFromGallery = 'select_image_from_gallery';
  static const selectImageFromCamera = 'select_image_from_camera';
  static const requiredImageMessage = 'required_image_message';
  static const shortRegister = 'short_register';
  static const lastUpdate = 'lastUpdate';
  static const insuranceMessage = 'insurance_message';
  static const noInsurance = 'no_insurance';
  static const uploadButton = 'upload_button';
  static const areYouSureToBack = 'are_you_sure_to_back';
  static const contentEditedNotSave = 'content_edited_not_save';

  // info registration code
  static const confirmCode = 'confirm_code';
  static const confirmCodeMsg = 'confirm_code _msg';
  static const resendCode = 'resend_code';
  static const codeTitle = 'code_title';
  static const codeNoti = 'code_noti';
  static const codeFAQ = 'code_faq';
  static const codeErrorVerify = 'code_error_verify';
  static const verify = 'verify';
  static const authenticationCode = 'authentication_code';

  /// payment
  static const creditCard = 'credit_card';
  static const acceptableCreditCard = 'acceptable_credit_card';
  static const registeredCreditCard = 'registered_credit_card';
  static const cardNumber = 'card_number';
  static const cardNumberHint = 'card_number_hint';
  static const dayExpiry = 'day_expiry';
  static const dayExpiryHint = 'day_expiry_hint';
  static const securityCode = 'security_code';
  static const securityCodeHint = 'security_code_hint';
  static const scanCard = 'scan_card';
  static const last4Digit = 'last_4_digit';
  static const otherPaymentMethod = 'othder_payment_method';
  static const errorIncorrectCard = 'error_incorrect_card';
  static const errorExpiredMonth = 'error_expired_month';
  static const errorExpiredMonthAndYear = 'error_expired_month_andyear';
  static const errorExpiredYear = 'error_expired_year';
  static const errorCardExpired = 'error_card_expired';
  static const errorIncorrectSecurityCode = 'error_incorrect_security_code';
  static const errorCardTitle = 'error_card_title';
  static const errorCardMessage = 'error_card_message';

  /// complete reservation
  static const deleteTitleReserComplete = 'delete_title_reser_complete';
  static const deleteDesReserComplete = 'delete_des_reser_complete';
  static const updateTitleReserComplete = 'update_title_reser_complete';
  static const updateDesReserComplete = 'update_des_reser_complete';
  static const createDesReserComplete = 'create_des_reser_complete';

  /// pharmacy complete
  static const pharmacyMedicationGuidanceCompleted =
      'pharmacy_medication_guidance_completed';
  static const thanksForHardWork = 'thanks_for_hard_work';
  static const yourNextReservation = 'your_next_reservation';
  static const takeCareYourself = 'take_care_yourself';
  static const makeNextAppointment = 'make_next_appointment';

  /// List appointment
  static const messageUpdateOrDeleteAppointment =
      'message_update_or_delete_appointment';
  static const appointmentWithHospital = 'appointment_with_hospital';
  static const appointmentWithPharmacist = 'appointment_with_pharmacist';
  static const messageCanNotUpdateOrDeleteAppointment =
      'message_can_not_update_or_delete_appointment';
  static const institution = 'institution';

  /// Stripe error
  static const invalidExpiryMonth = 'invalid_expiry_month';
  static const invalidExpiryYear = 'invalid_expiry_year';
  static const invalidCVC = 'invalid_cvc';
  static const invalidNumber = 'incorrect_number';
  static const specifiedCommercialTransactionsLaw =
      'specifiedCommercialTransactionsLaw';
  static const versionInformation = 'versionInformation';

  /// Setting
  static const vitalSetting = 'vital_setting';
  static const inquirySetting = 'inquiry_setting';
  static const termSetting = 'term_setting';
  static const requestPermissionForCall = 'requestPermissionForCall';
  static const requestPermission = 'requestPermission';
  static const requestPermissionForQuestionnaire =
      'request_permission_questionnaire';
  static const requestPermissionForInsurance = 'request_permission_insurance';

  /// Reset Password
  static const sendEmail = 'send_email';
  static const resetPassword = 'reset_password';
  static const updatePasswordTitle = 'update_password_title';
  static const updatePasswordDes1 = 'update_password_des1';
  static const updatePasswordDes2 = 'update_password_des2';
  static const oldPassword = 'old_password';
  static const resetPasswordDes = 'reset_password_des';
  static const resetPasswordMessage = 'reset_password_message';
  static const phonePlaceHolderResetPassword =
      'phone_place_holder_reset_password';
  static const phoneMessageResetPassword = 'phone_message_reset_password';
  static const resetPasswordErrorTitle = 'reset_password_error_title';
  static const resetPasswordErrorDes = 'reset_password_error_des';
  static const resetPasswordSuccessTitle = 'reset_password_success_title';
  static const resetPasswordSuccessDes = 'reset_password_success_des';
  static const errorSamePasswordTitle = 'error_same_password_title';
  static const errorSamePasswordDes = 'error_same_password_des';

  static const signUpSuccessTitle = 'signUpSuccessTitle';
  static const signUpSuccessMessage = 'signUpSuccessMessage';
  static const changedEmailSuccessTitle = 'changedEmailSuccessTitle';
  static const changedEmailSuccessMessage = 'changedEmailSuccessMessage';
  static const requestCameraPermission = 'request_camera_permission';
  static const requestIgnoreBatteryPermission =
      'request_ignore_battery_permission';

  //Submit document
  static const submitAdvanceDocuments = 'submit_advance_documents';
  static const submitNote = 'submit_note';
  static const submitUploadImageNote = 'submit_upload_image_note';
  static const submitMultipleImageNote = 'submit_multiple_image_note';
  static const sample = 'sample';
  static const preSummitDocument = 'pre_submit_document';
  static const oneOrMorePoint = 'one_or_more_point';
  static const documentToSubmit = 'document_to_submit';
  static const uploadImageFile = 'upload_image_file';
  static const fileTypeAndSize = 'file_type_and_size';
  static const submit = 'submit';
  static const submitDes1 = 'submit_des_1';
  static const submitDes2 = 'submit_des_2';
  static const surpassMaxSizeError = 'surpass_max_size_error';
  static const invalidFileTypeMessage = 'invalid_file_type_message';
  static const surpassMaxSizeFileError = 'surpass_max_size_file_error';
  static const deletePdfTitle = 'delete_pdf_title';
  static const surpassMaxFileCountError = 'surpass_max_file_count_error';
  static const otherErrorPickFile = 'other_error_pick_file';

  /// pharmacy
  static const noReservationData = 'noReservationData';
  static const sendPrescriptionCopy = 'sendPrescriptionCopy';
  static const uploadYourPrescriptionFileImage =
      'uploadYourPrescriptionFileImage';
  static const startOver = 'startOver';
  static const prescription = 'prescription';
  static const prescriptionCopy = 'prescriptionCopy';
  static const pharmacyAppointments = 'pharmacyAppointments';
  static const pharmacyAppointmentsMessage1 = 'pharmacyAppointmentsMessage1';
  static const pharmacyAppointmentsMessage2 = 'pharmacyAppointmentsMessage2';
  static const pharmacyAppointmentsMessage3 = 'pharmacyAppointmentsMessage3';
  static const lastMedicalExamination = 'last_medical_examination';
  static const receiveMedicineByPrescription =
      'receive_medicine_by_prescription';
  static const dateOfExpire = 'date_of_expire';
  static const receiveMedicationNote = 'receive_medication_note';

  /// withdrawal
  static const withdrawalConfirmTitle = 'withdrawalConfirmTitle';
  static const withdrawalConfirmMessage = 'withdrawalConfirmMessage';

  /// auto cancel message
  static const automaticallyCanceledTitle = 'automaticallyCanceledTitle';
  static const hospitalAppointmentTimePassedSoAutoCanceled =
      'hospitalAppointmentTimePassedSoAutoCanceled';
  static const medicationCounselingAppointmentTimePassedSoAutoCanceled =
      'medicationCounselingAppointmentTimePassedSoAutoCanceled';
  static const lackOfQuestionnaireOrDocumentationInputSoAutoCanceled =
      'lackOfQuestionnaireOrDocumentationInputSoAutoCanceled';
  static const questionnaireOrDocumentationInputLackSoAutoCanceled =
      'questionnaireOrDocumentationInputLackSoAutoCanceled';
  static const canceledTheReservation = 'canceledTheReservation';
  static const canceledTheReservationMessage = 'canceledTheReservationMessage';
  static const cannotCancelMembership = 'cannotCancelMembership';

  /// backend message
  static const ee000Message = 'ee000Message';
  static const ee001Message = 'ee001Message';
  static const ee002Message = 'ee002Message';
  static const ee003Message = 'ee003Message';
  static const ee004Message = 'ee004Message';
  static const ee005Message = 'ee005Message';
  static const ee006Message = 'ee006Message';
  static const ee007Message = 'ee007Message';
  static const ee008Message = 'ee008Message';
  static const ee009Message = 'ee009Message';
  static const ee010Message = 'ee010Message';
  static const ee011Message = 'ee011Message';
  static const ee012Message = 'ee012Message';
  static const ee013Message = 'ee013Message';
  static const ee014Message = 'ee014Message';
  static const ee015Message = 'ee015Message';
  static const ee016Message = 'ee016Message';
  static const ee017Message = 'ee017Message';
  static const ee018Message = 'ee018Message';
  static const ee022Message = 'ee022Message';
  static const ee026Message = 'ee026Message';
  static const ee032Message = 'ee032Message';
  static const ee033Message = 'ee033Message';
  static const ee035Message = 'ee035Message';
  static const ee043Message = 'ee043Message';
  static const ee074Message = 'ee074Message';
  static const ee075MessageHospital = 'ee075MessageHospital';
  static const ee075MessagePharmacy = 'ee075MessagePharmacy';
  static const ee075MessageDefault = 'ee075MessageDefault';
  static const ee078Message = 'ee078Message';
  static const ee080Message = 'ee080Message';
  static const ee081Message = 'ee081Message';
  static const ee092Message = 'ee092Message';

  /// Change email error
  static const usedEmailError = 'used_email_error';
  static const usedEmailErrorMsg = 'used_email_error_msg';

  /// Update version
  static const titleDialogUpdateVersion = 'title_dialog_update_version';
  static const subtitleDialogUpdateVersion = 'subtitle_dialog_update_version';
}

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        LocaleKey.en: EnglishLanguage().generateLanguage(),
      };
}
