# DispatchTimerIssueTest
The following is bugging me and I have no real answer on this

If I record two timestamps with

```swift
startTime = DispatchTime.now()
endTime = DispatchTime.now()
```

the difference then is:

__Correct__ if the app runs into iOS Simulator

__Incorrect__ if the app runs on an iOS 6 device

Incorrect in that case means that the time elapsed is wrong. If I stop the time for 5 seconds, the result is aprox. 502 ms. on the iPhone but aprox. 5000 ms in simulator.
