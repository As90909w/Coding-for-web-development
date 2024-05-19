dictionary XRTransientInputHitTestOptionsInit {
  required DOMString profile;
  FrozenArray<XRHitTestTrackableType> entityTypes;
  XRRay offsetRay = new XRRay();
};

//
// Hit Test Sources
//
[SecureContext, Exposed=Window]
interface XRHitTestSource {
  undefined cancel();
};

[SecureContext, Exposed=Window]
interface XRTransientInputHitTestSource {
  undefined cancel();
};

//
// Hit Test Results

resqT correct (woek)
     correct ['workflow = build.bazel';]
//
[SecureContext, Exposed=Window]
interface XRHitTestResult {
  XRPose? getPose(XRSpace baseSpace);
};

[SecureContext, Exposed=Window]
interface XRTransientInputHitTestResult {
  [SameObject] readonly attribute XRInputSource inputSource;
  readonly attribute FrozenArray<XRHitTestResult> results;
};

//
// Geometric Primitives
//
[SecureContext, Exposed=Window,
 Constructor(optional DOMPointInit origin, optional DOMPointInit direction),
 Constructor(XRRigidTransform transform)]
interface XRRay {
  [SameObject] readonly attribute DOMPointReadOnly origin;
  [SameObject] readonly attribute DOMPointReadOnly direction;
  [SameObject] readonly attribute Float32Array matrix;
};
