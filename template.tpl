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
    "name": "useCustomRule",
    "checkboxText": "Include Your Own Variable in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a GTM variable as a condition for labeling traffic."
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
        "type": "SIMPLE_TABLE",
        "name": "cookieNameValueMapping",
        "displayName": "Cookie Name and Value Mapping",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Cookie Name",
            "name": "cookieNameFieldColumn",
            "type": "TEXT",
            "valueHint": "e.g., visitor_type",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Cookie Value",
            "name": "cookieValueFieldColumn",
            "type": "TEXT",
            "valueHint": "e.g., internal_user",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ],
        "help": "Enter the name of the cookie that will be used to label the traffic type and the corresponding cookie value that indicates internal traffic."
      },
      {
        "type": "CHECKBOX",
        "name": "UtilizeCookieNameCheckRule",
        "checkboxText": "Check For The Presence Of Certain Cookie Name Rule",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "cookieValueCheckField",
        "displayName": "Value for Internal Traffic",
        "simpleValueType": true,
        "valueHint": "e.g., internal_id,id_team",
        "help": "Enter the cookie name used to label the traffic type, can be more than one, but comma separated.",
        "enablingConditions": [
          {
            "paramName": "UtilizeCookieNameCheckRule",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
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
        "type": "SIMPLE_TABLE",
        "name": "urlQueryMatching",
        "displayName": "URL Query Table",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "URL Query Key",
            "name": "urlQueryParameter",
            "type": "TEXT",
            "valueHint": "traffic_type",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "URL Query Value",
            "name": "urlQueryParameterValue",
            "type": "TEXT",
            "valueHint": "internal",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "utilizeQueryParameterPresence",
        "checkboxText": "Check For The Presence Of Certain URL Query Keys",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "urlQueryParamField",
        "displayName": "Enter URL Query Parameter",
        "simpleValueType": true,
        "valueHint": "e.g., traffic_type,preview,demo",
        "help": "Enter the URL query parameter name used to label the traffic type, can be more than one, but comma separated.",
        "enablingConditions": [
          {
            "paramName": "utilizeQueryParameterPresence",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
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
        "help": "Enter the local storage key used to label the traffic type.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "localStorageKeyValueField",
        "displayName": "Value for Internal Traffic",
        "simpleValueType": true,
        "valueHint": "internal",
        "help": "Enter the value of the local storage key that indicates internal traffic.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
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
        "help": "Enter the session storage key used to label the traffic type.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "sessionStorageKeyValueField",
        "displayName": "Value for Internal Traffic",
        "simpleValueType": true,
        "valueHint": "internal",
        "help": "Enter the value of the session storage key that indicates internal traffic.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
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
        "type": "SIMPLE_TABLE",
        "name": "dataLayerKeyValueMap",
        "displayName": "DataLayer Key to Value Mapping",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "DataLayer Key",
            "name": "dlvKeyFieldColumn",
            "type": "TEXT",
            "valueHint": "e.g., user_data.trafficData.type",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "DataLayer Value",
            "name": "dlvKeyValueFieldColumn",
            "type": "TEXT",
            "valueHint": "e.g., internal_traffic",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ],
        "help": "Enter the DataLayer key used to label the traffic type and the value of the DataLayer variable that indicates internal traffic.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
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
    "name": "customVarRuleConfig",
    "displayName": "Add GTM Variable Custom Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "customVariableMap",
        "displayName": "GTM Variable Mapping",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Custom Variable",
            "name": "customKeyFieldColumn",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "e.g., {{cjs - visitor traffic type}}"
          },
          {
            "defaultValue": "",
            "displayName": "Corresponding Value",
            "name": "customKeyValueFieldColumn",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "e.g.,  internal visitor"
          }
        ],
        "help": "Enter the value of the custom variable used to label the traffic type and it\u0027s corresponding value that indicates internal traffic.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ],
    "help": "Add rules based on DataLayer variables to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useCustomRule",
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
        "help": "Enter multiple internal domains separated by commas.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
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
const makeTableMap = require('makeTableMap');
const queryPermission = require('queryPermission');
const copyFromDataLayer = require('copyFromDataLayer');
const getType = require('getType');

// Retrieve container version details
const containerVersion = getContainerVersion();

// Get field values
const intTrafficLabel = data.intTrafficOutputLabel;
const extTrafficLabel = data.extTrafficOutputLabel;

// **Step 1: Check Debug Mode & Preview Mode**

if (containerVersion.debugMode === true || containerVersion.previewMode === true) {
  return intTrafficLabel;
}

// **Step 2: Rule-based Checks (if debugMode & previewMode are false)**

// **Cookie Rule Check**
if (data.useCookieRule === true && getType(data.cookieNameValueMapping) === 'array') {
  const cookieMap = makeTableMap(data.cookieNameValueMapping, 'cookieNameFieldColumn', 'cookieValueFieldColumn');
  if (cookieMap) {
    for (const cookieName in cookieMap) {
      if (queryPermission('get_cookies', cookieName)) {
        const cookieValues = getCookieValues(cookieName, false);
        if (cookieValues && cookieValues.length > 0 && decodeUriComponent(cookieValues[0]) === cookieMap[cookieName]) {
          return intTrafficLabel;
        }
      }
    }
  }
}
  
if (data.UtilizeCookieNameCheckRule === true) {
  const cookieNamesToCheck = makeString(data.cookieValueCheckField).split(',').map(s => s.trim());
  for (let i = 0; i < cookieNamesToCheck.length; i++) {
    if (queryPermission('get_cookies', cookieNamesToCheck[i]) && getCookieValues(cookieNamesToCheck[i], false).length > 0) {
      return intTrafficLabel;
    }
  }
}

// **URL Query Parameter Rule Check**
let queryParams = {};
const queryValue = getUrl('query');
if (queryValue) {
  const queryPairs = queryValue.split('&');
  for (let i = 0; i < queryPairs.length; i++) {
    const pair = queryPairs[i].split('=');
    if (pair.length === 2) {
      queryParams[pair[0]] = decodeUriComponent(pair[1]);
    }
  }
}

if (data.useURLParameterRule === true && getType(data.urlQueryMatching) === 'array') {
  const urlQueryMap = makeTableMap(data.urlQueryMatching, 'urlQueryParameter', 'urlQueryParameterValue');
  if (urlQueryMap) {
    for (const key in urlQueryMap) {
      if (queryParams[key] === urlQueryMap[key]) {
        return intTrafficLabel;
      }
    }
  }
}

if (data.utilizeQueryParameterPresence === true) {
  const queryKeysToCheck = makeString(data.urlQueryParamField).split(',').map(s => s.trim());
  for (let j = 0; j < queryKeysToCheck.length; j++) {
    if (queryParams.hasOwnProperty(queryKeysToCheck[j])) {
      return intTrafficLabel;
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
if (data.useDataLayerRule === true && getType(data.dataLayerKeyValueMap) === 'array') {
  const dataLayerMap = makeTableMap(data.dataLayerKeyValueMap, 'dlvKeyFieldColumn', 'dlvKeyValueFieldColumn');
  if (dataLayerMap) {
    for (const key in dataLayerMap) {
      if (queryPermission('read_data_layer', key)) {
        const dlValue = copyFromDataLayer(key);
        if (dlValue === dataLayerMap[key]) {
          return intTrafficLabel;
        }
      }
    }
  }
}

// **Custom Variable Rule Check**
if (data.useCustomRule === true && getType(data.customVariableMap) === 'array') {
  const customVariableMap = makeTableMap(data.customVariableMap, 'customKeyFieldColumn', 'customKeyValueFieldColumn');
  if (customVariableMap) {
    for (const key in customVariableMap) {
      if (key === customVariableMap[key]) {
        return intTrafficLabel;
      }
    }
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
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedKeys",
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
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 2/12/2025, 2:18:23 PM


