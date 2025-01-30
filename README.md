# Advance Traffic Labeling Rule GTM Variable

## Overview
The **Advance Traffic Labeling Rule** is a **Google Tag Manager (GTM) variable custom template** designed for **flexible traffic segmentation** based on various rules, including **domain, cookies, storage, query parameters, and Data Layer variables**. This template helps distinguish **internal vs. external traffic** based on user-defined rules.

## Features
- **Default Behavior**: Uses GTM’s `debugMode` and `previewMode` to classify traffic.  
- **Custom Rule-Based Segmentation**: Supports **cookies, query parameters, local storage, session storage, Data Layer variables, and hostname validation**.  
- **Flexible Configuration**: Users can enable or disable different traffic rules to suit their needs.  
- **No-Code UI-Based Setup**: Configure everything within GTM’s template UI—no manual JavaScript needed.

---

## How to Set Up & Configure
This variable template provides a UI where you can define how traffic is segmented. Here’s how you can configure it:

### **Step 1: Add the Variable to GTM**
1. Go to **Google Tag Manager**.
2. Navigate to **Templates > New**.
3. Click **Import Template** and select the `Advance Traffic Labeling Rule` template.
4. Save the template.

### **Step 2: Configure the Variable in the GTM UI**
Go to **Variables > New > User-Defined Variables**, select `Advance Traffic Labeling Rule`, and configure the fields:

#### **Default Behavior (Always Applied)**
- **Debug Mode Check**: If `debugMode` is `true`, the variable returns the **internal traffic label**.
- **Preview Mode Check**: If `previewMode` is `true`, the variable returns the **internal traffic label**.

#### **Custom Rules (Optional - Enabled Manually)**
You can enable one or multiple rules to define internal traffic:

| Rule Type                | Description |
|-------------------------|-------------|
| **Cookie Rule**         | Checks if a specific cookie exists and matches the expected value. |
| **URL Query Parameter** | Checks if a URL query parameter exists and matches the expected value. |
| **Local Storage**       | Requires a **Custom JavaScript Variable** in GTM to check Local Storage. |
| **Session Storage**     | Requires a **Custom JavaScript Variable** in GTM to check Session Storage. |
| **Data Layer Variable** | Requires a **GTM Data Layer Variable** to be created and referenced. |
| **Hostname Rule**       | Checks if the current domain matches a user-defined list. |

### **Step 3: Configure the Variable for Each Rule**

#### **Cookie Rule**
1. Enable **Use Cookie Rule** in the template settings.
2. Enter the **cookie name** in `cookieNameField`.
3. Enter the expected **cookie value** in `cookieValueField`.
4. The variable will check if the specified cookie exists and matches the expected value.

#### **URL Query Parameter Rule**
1. Enable **Use URL Query Parameter Rule** in the template settings.
2. Enter the **query parameter name** in `urlQueryParamField`.
3. Enter the expected **query parameter value** in `urlQueryValueField`.
4. The variable will check if the specified query parameter exists and matches the expected value.

#### **Hostname Rule**
1. Enable **Use Hostname Rule** in the template settings.
2. Enter the **domain(s)** in `domainNameField`. If entering multiple domains, separate them with commas (e.g., `example.com, mysite.org`).
3. The variable will check if the current page hostname matches any of the specified domains.

### **Step 3b: Configure Local Storage, Session Storage, and Data Layer**
For **Local Storage and Session Storage**, GTM does not provide direct access for dynamic keys. You must create a **Custom JavaScript Variable**:

#### **Example: Custom JavaScript Variable for Local Storage**
```javascript
function() {
  return localStorage.getItem('your_storage_key') || '';
}
```

#### **Example: Custom JavaScript Variable for Session Storage**
```javascript
function() {
  return sessionStorage.getItem('your_storage_key') || '';
}
```
Reference this variable inside the **Advance Traffic Labeling Rule** variable.

For **Data Layer**, create a **Data Layer Variable** in GTM:
1. Go to **Variables > New > Data Layer Variable**.
2. Set the variable name to match your `dlvKeyField`.
3. Reference this Data Layer Variable in the **Advance Traffic Labeling Rule** template.

---

## Expected Output
The variable outputs different labels based on configuration.

| Debug Mode | Preview Mode | Cookie Rule | URL Rule | Local Storage | Session Storage | Data Layer | Hostname | Output Label |
|------------|-------------|-------------|----------|--------------|----------------|------------|----------|--------------|
| ✅ `true`  | ❌ `false`  | -           | -        | -            | -              | -          | -        | Internal Label |
| ❌ `false` | ✅ `true`   | -           | -        | -            | -              | -          | -        | Internal Label |
| ❌ `false` | ❌ `false`  | ✅ `match`  | -        | -            | -              | -          | -        | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ✅ `match` | - | - | - | - | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ❌ `no match` | ✅ `match` | - | - | - | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ❌ `no match` | ❌ `no match` | ✅ `match` | - | - | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | ✅ `match` | - | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | ✅ `match` | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | External Label |

- If **any rule matches**, `Internal Label` is returned.
- If **no rules match**, `External Label` is returned.

---

## Author

Created by **Jude Nwachukwu Onyejekwe**.

This template is part of the [Dumbdata.co Measurement Resource Hub](https://dumbdata.co), which provides resources designed to simplify measurement strategies and implementations.

---
## License
This project is licensed under the Apache License.
