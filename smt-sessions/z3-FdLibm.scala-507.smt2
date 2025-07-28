; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2711 () Bool)

(assert start!2711)

(declare-fun b!14883 () Bool)

(declare-fun e!8458 () Bool)

(declare-fun e!8455 () Bool)

(assert (=> b!14883 (= e!8458 e!8455)))

(declare-fun res!11491 () Bool)

(assert (=> b!14883 (=> (not res!11491) (not e!8455))))

(declare-fun lt!7978 () (_ BitVec 32))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!14883 (= res!11491 (and (bvsge lt!7978 (bvsub jz!20 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!7978) (bvsle lt!7978 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!14883 (= lt!7978 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun b!14884 () Bool)

(declare-fun res!11489 () Bool)

(declare-fun e!8456 () Bool)

(assert (=> b!14884 (=> (not res!11489) (not e!8456))))

(declare-datatypes ((array!1176 0))(
  ( (array!1177 (arr!517 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!517 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1176)

(declare-fun qInv!0 (array!1176) Bool)

(assert (=> b!14884 (= res!11489 (qInv!0 q!31))))

(declare-fun res!11490 () Bool)

(assert (=> start!2711 (=> (not res!11490) (not e!8456))))

(assert (=> start!2711 (= res!11490 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2711 e!8456))

(assert (=> start!2711 true))

(declare-fun array_inv!465 (array!1176) Bool)

(assert (=> start!2711 (array_inv!465 q!31)))

(declare-datatypes ((array!1178 0))(
  ( (array!1179 (arr!518 (Array (_ BitVec 32) (_ BitVec 32))) (size!518 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1178)

(declare-fun array_inv!466 (array!1178) Bool)

(assert (=> start!2711 (array_inv!466 iq!76)))

(declare-fun b!14885 () Bool)

(declare-fun res!11492 () Bool)

(assert (=> b!14885 (=> (not res!11492) (not e!8455))))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun lt!7979 () (_ BitVec 32))

(declare-fun iqInv!0 (array!1178) Bool)

(assert (=> b!14885 (= res!11492 (iqInv!0 (array!1179 (store (arr!518 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!7979 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!7979) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!7979))) (size!518 iq!76))))))

(declare-fun b!14886 () Bool)

(declare-fun e!8457 () Bool)

(assert (=> b!14886 (= e!8457 e!8458)))

(declare-fun res!11487 () Bool)

(assert (=> b!14886 (=> (not res!11487) (not e!8458))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14886 (= res!11487 (QInt!0 lt!7979))))

(assert (=> b!14886 (= lt!7979 (select (arr!518 iq!76) i!142))))

(declare-fun b!14887 () Bool)

(assert (=> b!14887 (= e!8455 (and (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!7980 () (_ FloatingPoint 11 53))

(declare-fun lt!7977 () array!1178)

(declare-fun b!14888 () Bool)

(declare-datatypes ((Unit!1600 0))(
  ( (Unit!1601) )
))
(declare-datatypes ((tuple4!410 0))(
  ( (tuple4!411 (_1!399 Unit!1600) (_2!399 array!1178) (_3!336 (_ BitVec 32)) (_4!205 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8459 () tuple4!410)

(declare-fun Unit!1602 () Unit!1600)

(assert (=> b!14888 (= e!8459 (tuple4!411 Unit!1602 lt!7977 jz!20 lt!7980))))

(declare-fun b!14889 () Bool)

(declare-fun res!11485 () Bool)

(assert (=> b!14889 (=> (not res!11485) (not e!8457))))

(assert (=> b!14889 (= res!11485 (iqInv!0 iq!76))))

(declare-fun b!14890 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1176 array!1178 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!410)

(assert (=> b!14890 (= e!8459 (computeModuloWhile!0 jz!20 q!31 lt!7977 jz!20 lt!7980))))

(declare-fun b!14891 () Bool)

(assert (=> b!14891 (= e!8456 e!8457)))

(declare-fun res!11486 () Bool)

(assert (=> b!14891 (=> (not res!11486) (not e!8457))))

(declare-fun lt!7976 () tuple4!410)

(declare-fun lt!7975 () (_ FloatingPoint 11 53))

(assert (=> b!14891 (= res!11486 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7975) (fp.lt lt!7975 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!518 (_2!399 lt!7976)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14891 (= lt!7975 (fp.sub roundNearestTiesToEven (_4!205 lt!7976) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!205 lt!7976) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!205 lt!7976) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!205 lt!7976) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!205 lt!7976) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14891 (= lt!7976 e!8459)))

(declare-fun c!1910 () Bool)

(assert (=> b!14891 (= c!1910 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14891 (= lt!7980 (select (arr!517 q!31) jz!20))))

(assert (=> b!14891 (= lt!7977 (array!1179 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14892 () Bool)

(declare-fun res!11488 () Bool)

(assert (=> b!14892 (=> (not res!11488) (not e!8457))))

(assert (=> b!14892 (= res!11488 (and (bvsge (select (arr!518 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (= (and start!2711 res!11490) b!14884))

(assert (= (and b!14884 res!11489) b!14891))

(assert (= (and b!14891 c!1910) b!14890))

(assert (= (and b!14891 (not c!1910)) b!14888))

(assert (= (and b!14891 res!11486) b!14889))

(assert (= (and b!14889 res!11485) b!14892))

(assert (= (and b!14892 res!11488) b!14886))

(assert (= (and b!14886 res!11487) b!14883))

(assert (= (and b!14883 res!11491) b!14885))

(assert (= (and b!14885 res!11492) b!14887))

(declare-fun m!22285 () Bool)

(assert (=> b!14889 m!22285))

(declare-fun m!22287 () Bool)

(assert (=> b!14884 m!22287))

(declare-fun m!22289 () Bool)

(assert (=> b!14890 m!22289))

(declare-fun m!22291 () Bool)

(assert (=> b!14885 m!22291))

(declare-fun m!22293 () Bool)

(assert (=> b!14885 m!22293))

(declare-fun m!22295 () Bool)

(assert (=> start!2711 m!22295))

(declare-fun m!22297 () Bool)

(assert (=> start!2711 m!22297))

(declare-fun m!22299 () Bool)

(assert (=> b!14891 m!22299))

(declare-fun m!22301 () Bool)

(assert (=> b!14891 m!22301))

(declare-fun m!22303 () Bool)

(assert (=> b!14886 m!22303))

(declare-fun m!22305 () Bool)

(assert (=> b!14886 m!22305))

(declare-fun m!22307 () Bool)

(assert (=> b!14892 m!22307))

(check-sat (not b!14884) (not b!14890) (not start!2711) (not b!14886) (not b!14885) (not b!14889))
(check-sat)
