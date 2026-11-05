# docassemble.HelpForChildSupportObligors

A docassemble guided interview for MA Department of Revenue / Child Support Enforcement

## Author

Caroline Robinson, crobinson@mlri.org


## Interview tests

[ALKiln v5](https://assemblyline.suffolklitlab.org/docs/components/ALKiln/intro/)
runs the feature files in `docassemble/HelpForChildSupportObligors/data/sources/`.
Keep all ALKiln fixtures in that directory. No custom Puppeteer runner or local
`package.json` is needed.

The **Test the interview** GitHub Actions workflow creates a temporary
docassemble server using ALKiln's standard Sandbox action, installs this package,
and runs all scenarios. It requires no repository secrets. The package declares
its imported dependencies so the fresh server can load the interview; VLPBranding
and ssa use pinned GitHub sources because they are not published on PyPI.

To rerun on a branch, choose **Actions → Test the interview → Run workflow**.
Leave `tags` blank for all tests, or use `@smoke`, `@dont_owe_any`, or
`@equity_adjustment`. Download the run's `alkiln-*` artifact for reports,
screenshots, and HTML of failing pages. Setup/install failures appear separately
from interview scenario failures.

The two regression scenarios preserve the legacy stories and target the final
download screen. Their tables contain user answers, not generated document
metadata or computed completion flags. They are regression fixtures, not evidence
that the interview currently completes: inspect the failing page and unused rows
in the ALKiln report before attributing a failure to a PR change.
