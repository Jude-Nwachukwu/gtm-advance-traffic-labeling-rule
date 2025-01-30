___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Advance Traffic Labeling Rule",
  "description": "This variable enable flexible traffic segmentation by defining rules based on criteria like domain, cookies, storage, query parameters, and dataLayer to distinguish internal and external traffic",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "templateText",
    "displayName": "Configure Internal Rules (Debug Mode Is Enabled by Default)"
  },
  {
    "type": "TEXT",
    "name": "intTrafficOutputLabel",
    "displayName": "Label for Internal Traffic",
    "simpleValueType": true,
    "help": "Specify the label for the variable\u0027s output value when the traffic is internal.",
    "valueHint": "e.g., internal_visit",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "extTrafficOutputLabel",
    "displayName": "Label for External Traffic",
    "simpleValueType": true,
    "help": "Specify the label for the variable\u0027s output value when the traffic is external.",
    "valueHint": "e.g., external_visit",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "useCookieRule",
    "checkboxText": "Include Cookie Name in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a cookie name as a condition for labeling traffic."
  },
  {
    "type": "CHECKBOX",
    "name": "useURLParameterRule",
    "checkboxText": "Include URL Parameter in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a URL query parameter as a condition for labeling traffic."
  },
  {
    "type": "CHECKBOX",
    "name": "useLocalStorageRule",
    "checkboxText": "Include Local Storage Key in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a local storage key as a condition for labeling traffic."
  },
  {
    "type": "CHECKBOX",
    "name": "useSessionStorageRule",
    "checkboxText": "Include Session Storage Key in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a session storage key as a condition for labeling traffic."
  },
  {
    "type": "CHECKBOX",
    "name": "useDataLayerRule",
    "checkboxText": "Include DataLayer Variable in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a DataLayer variable as a condition for labeling traffic."
  },
  {
    "type": "CHECKBOX",
    "name": "useHostnameRule",
    "checkboxText": "Include Hostname in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use the hostname as a condition for labeling traffic."
  },
  {
    "type": "GROUP",
    "name": "cookieBaseRuleConfig",
    "displayName": "Add Cookie Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "cookieNameField",
        "displayName": "Enter Cookie Name",
        "simpleValueType": true,
        "valueHint": "e.g., traffic_type",
        "help": "Enter the name of the cookie that will be used to label the traffic type."
      },
      {
        "type": "TEXT",
        "name": "cookieValueField",
        "displayName": "Value for Internal Traffic",
        "simpleValueType": true,
        "valueHint": "internal",
        "help": "Enter the cookie value that indicates internal traffic."
      }
    ],
    "help": "Add rules based on cookie values to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useCookieRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "urlParamBaseRuleConfig",
    "displayName": "Add URL Query Parameter Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "urlQueryParamField",
        "displayName": "Enter URL Query Parameter",
        "simpleValueType": true,
        "valueHint": "e.g., traffic_type",
        "help": "Enter the URL query parameter name used to label the traffic type."
      },
      {
        "type": "TEXT",
        "name": "urlQueryValueField",
        "displayName": "Value for Internal Traffic",
        "simpleValueType": true,
        "valueHint": "internal",
        "help": "Enter the value of the URL query parameter that indicates internal traffic."
      }
    ],
    "help": "Add rules based on URL query parameters to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useURLParameterRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "localStorageRuleConfig",
    "displayName": "Add Local Storage Key Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "localStorageKeyField",
        "displayName": "Enter Local Storage Key",
        "simpleValueType": true,
        "valueHint": "e.g., traffic_type",
        "help": "Enter the local storage key used to label the traffic type."
      },
      {
        "type": "TEXT",
        "name": "localStorageKeyValueField",
        "displayName": "Value for Internal Traffic",
        "simpleValueType": true,
        "valueHint": "internal",
        "help": "Enter the value of the local storage key that indicates internal traffic."
      }
    ],
    "help": "Add rules based on local storage keys to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useLocalStorageRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "sessionStorageRuleConfig",
    "displayName": "Add Session Storage Key Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "sessionStorageKeyField",
        "displayName": "Enter Session Storage Key",
        "simpleValueType": true,
        "valueHint": "e.g., traffic_type",
        "help": "Enter the session storage key used to label the traffic type."
      },
      {
        "type": "TEXT",
        "name": "sessionStorageKeyValueField",
        "displayName": "Value for Internal Traffic",
        "simpleValueType": true,
        "valueHint": "internal",
        "help": "Enter the value of the session storage key that indicates internal traffic."
      }
    ],
    "help": "Add rules based on session storage keys to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useSessionStorageRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "dataLayerVarRuleConfig",
    "displayName": "Add DataLayer Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "dlvKeyField",
        "displayName": "Enter DataLayer Variable",
        "simpleValueType": true,
        "valueHint": "e.g., {{dlv_traffic_type}}",
        "help": "Enter the DataLayer variable used to label the traffic type."
      },
      {
        "type": "TEXT",
        "name": "dlvKeyValueField",
        "displayName": "Value for Internal Traffic",
        "simpleValueType": true,
        "valueHint": "internal",
        "help": "Enter the value of the DataLayer variable that indicates internal traffic."
      }
    ],
    "help": "Add rules based on DataLayer variables to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useDataLayerRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "urlHotsnameRuleConfig",
    "displayName": "Add Hostname (Domains) Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "domainNameField",
        "displayName": "Enter Internal Domains (Comma Separated)",
        "simpleValueType": true,
        "valueHint": "e.g., abc.com,xyz.com",
        "help": "Enter multiple internal domains separated by commas."
      }
    ],
    "help": "Add rules based on hostname values to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useHostnameRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Import required GTM Core APIs
const getContainerVersion = require('getContainerVersion');
const getUrl = require('getUrl');
const getCookieValues = require('getCookieValues');
const decodeUriComponent = require('decodeUriComponent');
const makeString = require('makeString');
const queryPermission = require('queryPermission');

// Retrieve container version details
const containerVersion = getContainerVersion();

// Get field values
const intTrafficLabel = data.intTrafficOutputLabel;
const extTrafficLabel = data.extTrafficOutputLabel;

// **Step 1: Check Debug Mode & Preview Mode**
if (containerVersion.debugMode === true) {
  return intTrafficLabel;
}
if (containerVersion.previewMode === true) {
  return intTrafficLabel;
}

// **Step 2: Rule-based Checks (if debugMode & previewMode are false)**

// **Cookie Rule Check**
if (data.useCookieRule === true) {
  const cookieName = makeString(data.cookieNameField);
  const expectedCookieValue = makeString(data.cookieValueField);
  
  if (queryPermission('get_cookies', cookieName)) {
    const cookieValues = getCookieValues(cookieName, false); // Explicitly disable auto-decoding
    if (cookieValues && cookieValues.length > 0) {
      const decodedValue = decodeUriComponent(cookieValues[0]);
      if (decodedValue === expectedCookieValue) {
        return intTrafficLabel;
      }
    }
  }
}

// **URL Query Parameter Rule Check**
if (data.useURLParameterRule === true) {
  const queryParam = makeString(data.urlQueryParamField);
  const expectedQueryValue = makeString(data.urlQueryValueField);
  const queryValue = getUrl('query'); // Retrieves the entire query string

  if (queryValue) {
    const queryParams = queryValue.split('&'); // Split into key-value pairs
    for (let i = 0; i < queryParams.length; i++) {
      const paramParts = queryParams[i].split('=');
      if (paramParts.length === 2) {
        const paramName = paramParts[0];
        const paramValue = paramParts[1];
        
        if (paramName === queryParam && decodeUriComponent(paramValue) === expectedQueryValue) {
          return intTrafficLabel;
        }
      }
    }
  }
}

// **Local Storage Rule Check**
if (data.useLocalStorageRule === true) {
  const storageKey = makeString(data.localStorageKeyField);
  const expectedStorageValue = makeString(data.localStorageKeyValueField);

  if (storageKey === expectedStorageValue) {
    return intTrafficLabel;
  }
}

// **Session Storage Rule Check**
if (data.useSessionStorageRule === true) {
  const sessionKey = makeString(data.sessionStorageKeyField);
  const expectedSessionValue = makeString(data.sessionStorageKeyValueField);

  if (sessionKey === expectedSessionValue) {
    return intTrafficLabel;
  }
}

// **Data Layer Rule Check**
if (data.useDataLayerRule === true) {
  const dlvKey = makeString(data.dlvKeyField);
  const expectedDlvValue = makeString(data.dlvKeyValueField);

  if (dlvKey === expectedDlvValue) {
    return intTrafficLabel;
  }
}

// **Hostname Rule Check**
if (data.useHostnameRule === true) {
  const domainList = makeString(data.domainNameField).split(',').map(function (domain) {
    return domain.trim();
  });
  const currentHost = getUrl('host');

  if (domainList.indexOf(currentHost) !== -1) {
    return intTrafficLabel;
  }
}

// **Final Step: If No Rules Match, Return External Traffic Label**
return extTrafficLabel;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_container_data",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 1/30/2025, 10:43:32 AM


