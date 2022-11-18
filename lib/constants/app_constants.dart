// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/material.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
const kConstTermsAndConditionsURL = 'https://progyny.com/terms-of-use/';
const kConstPrivacyPolicyURL = 'https://progyny.com/privacy-policy/';
const kConstProviderSearchURL = 'https://providersearch.progyny.com/';
const kConstPatientPayURL = 'https://www2.patientpay.net/security/login/code';
const kConstInfoTextURL = 'https://progyny.com/smart-benefits/smart-cycle/';
const kConstIUIURL =
    'https://progyny.com/education/what-is-intrauterine-insemination-iui/';
const kConstIVFFreshURL =
    'https://progyny.com/education/ivf-facts/what-is-ivf/';
const kConstIVFFreezeAll =
    'https://progyny.com/education/fertility-101/what-is-ivf/';
const kConstFrozenEmbryoTransfer =
    'https://progyny.com/education/ivf-facts/egg-donation/';
const kConstEggCryopreservation =
    'https://progyny.com/education/understanding-the-egg-freezing-process/';
const kConstElectiveSemenCryopreservation =
    'https://progyny.com/education/sperm-freezing-101/';
const kConstFrozenOocyteTransfer = 'https://progyny.com/education/understanding-the-egg-freezing-process/';
// ignore: todo
// TODO NEED TO UPDATE ABOVE URL

const kConstSupportContactNumber = 'tel:123-456-789';
const kConstSupportMailId = 'mailto:test@gmail.com';

const kConstDateOfBirthRegex =
    r'^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$';
const kConstEmailRegex = r'^([\w\d\.]+)@([\w\d-]+)\.([\w]{2,4})(\.[\w]{2,4})?$';
const kConstPasswordRegex =
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[@$!%*#?&]).{8,}$';

const kValidTestEmailAddress = 'test@progyny.com';
const kConstNumberFormat = '###,###.00#';
const kConstCountryCode = 'en_US';
const kConstDateFormat = 'MM.dd.yy';
const kConstTimeFormat = 'jm';
