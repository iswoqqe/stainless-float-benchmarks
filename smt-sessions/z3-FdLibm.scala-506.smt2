; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2677 () Bool)

(assert start!2677)

(declare-fun lt!7877 () (_ FloatingPoint 11 53))

(declare-fun b!14390 () Bool)

(declare-fun jz!20 () (_ BitVec 32))

(declare-datatypes ((array!1169 0))(
  ( (array!1170 (arr!515 (Array (_ BitVec 32) (_ BitVec 32))) (size!515 (_ BitVec 32))) )
))
(declare-fun lt!7878 () array!1169)

(declare-datatypes ((Unit!1580 0))(
  ( (Unit!1581) )
))
(declare-datatypes ((tuple4!408 0))(
  ( (tuple4!409 (_1!398 Unit!1580) (_2!398 array!1169) (_3!335 (_ BitVec 32)) (_4!204 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8348 () tuple4!408)

(declare-fun Unit!1582 () Unit!1580)

(assert (=> b!14390 (= e!8348 (tuple4!409 Unit!1582 lt!7878 jz!20 lt!7877))))

(declare-datatypes ((array!1171 0))(
  ( (array!1172 (arr!516 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!516 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1171)

(declare-fun b!14391 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1171 array!1169 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!408)

(assert (=> b!14391 (= e!8348 (computeModuloWhile!0 jz!20 q!31 lt!7878 jz!20 lt!7877))))

(declare-fun b!14392 () Bool)

(declare-fun res!11037 () Bool)

(declare-fun e!8352 () Bool)

(assert (=> b!14392 (=> (not res!11037) (not e!8352))))

(declare-fun iq!76 () array!1169)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14392 (= res!11037 (QInt!0 (select (arr!515 iq!76) i!142)))))

(declare-fun b!14393 () Bool)

(declare-fun res!11042 () Bool)

(declare-fun e!8349 () Bool)

(assert (=> b!14393 (=> (not res!11042) (not e!8349))))

(declare-fun qInv!0 (array!1171) Bool)

(assert (=> b!14393 (= res!11042 (qInv!0 q!31))))

(declare-fun b!14394 () Bool)

(declare-fun res!11039 () Bool)

(assert (=> b!14394 (=> (not res!11039) (not e!8352))))

(declare-fun iqInv!0 (array!1169) Bool)

(assert (=> b!14394 (= res!11039 (iqInv!0 iq!76))))

(declare-fun b!14395 () Bool)

(declare-fun res!11040 () Bool)

(assert (=> b!14395 (=> (not res!11040) (not e!8352))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!14395 (= res!11040 (and (bvsge (select (arr!515 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!14396 () Bool)

(assert (=> b!14396 (= e!8349 e!8352)))

(declare-fun res!11041 () Bool)

(assert (=> b!14396 (=> (not res!11041) (not e!8352))))

(declare-fun lt!7880 () (_ FloatingPoint 11 53))

(declare-fun lt!7876 () tuple4!408)

(assert (=> b!14396 (= res!11041 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7880) (fp.lt lt!7880 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!515 (_2!398 lt!7876)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14396 (= lt!7880 (fp.sub roundNearestTiesToEven (_4!204 lt!7876) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!204 lt!7876) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!204 lt!7876) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!204 lt!7876) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!204 lt!7876) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14396 (= lt!7876 e!8348)))

(declare-fun c!1887 () Bool)

(assert (=> b!14396 (= c!1887 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14396 (= lt!7877 (select (arr!516 q!31) jz!20))))

(assert (=> b!14396 (= lt!7878 (array!1170 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14389 () Bool)

(declare-fun lt!7879 () (_ BitVec 32))

(assert (=> b!14389 (= e!8352 (and (bvsge lt!7879 (bvsub jz!20 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!7879) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!14389 (= lt!7879 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun res!11038 () Bool)

(assert (=> start!2677 (=> (not res!11038) (not e!8349))))

(assert (=> start!2677 (= res!11038 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2677 e!8349))

(assert (=> start!2677 true))

(declare-fun array_inv!463 (array!1171) Bool)

(assert (=> start!2677 (array_inv!463 q!31)))

(declare-fun array_inv!464 (array!1169) Bool)

(assert (=> start!2677 (array_inv!464 iq!76)))

(assert (= (and start!2677 res!11038) b!14393))

(assert (= (and b!14393 res!11042) b!14396))

(assert (= (and b!14396 c!1887) b!14391))

(assert (= (and b!14396 (not c!1887)) b!14390))

(assert (= (and b!14396 res!11041) b!14394))

(assert (= (and b!14394 res!11039) b!14395))

(assert (= (and b!14395 res!11040) b!14392))

(assert (= (and b!14392 res!11037) b!14389))

(declare-fun m!19931 () Bool)

(assert (=> b!14392 m!19931))

(assert (=> b!14392 m!19931))

(declare-fun m!19933 () Bool)

(assert (=> b!14392 m!19933))

(declare-fun m!19935 () Bool)

(assert (=> b!14393 m!19935))

(declare-fun m!19937 () Bool)

(assert (=> start!2677 m!19937))

(declare-fun m!19939 () Bool)

(assert (=> start!2677 m!19939))

(declare-fun m!19941 () Bool)

(assert (=> b!14391 m!19941))

(declare-fun m!19943 () Bool)

(assert (=> b!14395 m!19943))

(declare-fun m!19945 () Bool)

(assert (=> b!14394 m!19945))

(declare-fun m!19947 () Bool)

(assert (=> b!14396 m!19947))

(declare-fun m!19949 () Bool)

(assert (=> b!14396 m!19949))

(check-sat (not b!14392) (not b!14391) (not b!14393) (not b!14394) (not start!2677))
(check-sat)
