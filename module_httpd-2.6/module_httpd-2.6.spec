Name:      module_httpd-2.6
Version:   2.6
Release:   1
Summary:   module httpd-%{version}
License:   GPLv2+
BuildArch: noarch

Provides: module_httpd = %{version}
Requires: package_httpd = %{version}-%{release}

%description
%{summary}

%files
