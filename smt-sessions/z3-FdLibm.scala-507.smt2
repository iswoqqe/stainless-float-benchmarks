; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2679 () Bool)

(assert start!2679)

(declare-fun b!14417 () Bool)

(declare-fun e!8371 () Bool)

(declare-fun e!8372 () Bool)

(assert (=> b!14417 (= e!8371 e!8372)))

(declare-fun res!11060 () Bool)

(assert (=> b!14417 (=> (not res!11060) (not e!8372))))

(declare-fun lt!7897 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun i!142 () (_ BitVec 32))

(declare-datatypes ((Unit!1583 0))(
  ( (Unit!1584) )
))
(declare-datatypes ((array!1173 0))(
  ( (array!1174 (arr!517 (Array (_ BitVec 32) (_ BitVec 32))) (size!517 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!410 0))(
  ( (tuple4!411 (_1!399 Unit!1583) (_2!399 array!1173) (_3!336 (_ BitVec 32)) (_4!205 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7893 () tuple4!410)

(assert (=> b!14417 (= res!11060 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7897) (fp.lt lt!7897 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!517 (_2!399 lt!7893)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14417 (= lt!7897 (fp.sub roundNearestTiesToEven (_4!205 lt!7893) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!205 lt!7893) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!205 lt!7893) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!205 lt!7893) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!205 lt!7893) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8370 () tuple4!410)

(assert (=> b!14417 (= lt!7893 e!8370)))

(declare-fun c!1890 () Bool)

(assert (=> b!14417 (= c!1890 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7894 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!1175 0))(
  ( (array!1176 (arr!518 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!518 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1175)

(assert (=> b!14417 (= lt!7894 (select (arr!518 q!31) jz!20))))

(declare-fun lt!7895 () array!1173)

(assert (=> b!14417 (= lt!7895 (array!1174 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14418 () Bool)

(declare-fun e!8369 () Bool)

(assert (=> b!14418 (= e!8372 e!8369)))

(declare-fun res!11063 () Bool)

(assert (=> b!14418 (=> (not res!11063) (not e!8369))))

(declare-fun lt!7896 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14418 (= res!11063 (QInt!0 lt!7896))))

(declare-fun iq!76 () array!1173)

(assert (=> b!14418 (= lt!7896 (select (arr!517 iq!76) i!142))))

(declare-fun b!14419 () Bool)

(declare-fun e!8368 () Bool)

(assert (=> b!14419 (= e!8369 e!8368)))

(declare-fun res!11059 () Bool)

(assert (=> b!14419 (=> (not res!11059) (not e!8368))))

(declare-fun lt!7898 () (_ BitVec 32))

(assert (=> b!14419 (= res!11059 (and (bvsge lt!7898 (bvsub jz!20 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!7898) (bvsle lt!7898 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14419 (= lt!7898 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun b!14420 () Bool)

(declare-fun res!11064 () Bool)

(assert (=> b!14420 (=> (not res!11064) (not e!8372))))

(declare-fun iqInv!0 (array!1173) Bool)

(assert (=> b!14420 (= res!11064 (iqInv!0 iq!76))))

(declare-fun b!14422 () Bool)

(declare-fun res!11061 () Bool)

(assert (=> b!14422 (=> (not res!11061) (not e!8371))))

(declare-fun qInv!0 (array!1175) Bool)

(assert (=> b!14422 (= res!11061 (qInv!0 q!31))))

(declare-fun b!14423 () Bool)

(declare-fun Unit!1585 () Unit!1583)

(assert (=> b!14423 (= e!8370 (tuple4!411 Unit!1585 lt!7895 jz!20 lt!7894))))

(declare-fun b!14424 () Bool)

(declare-fun res!11066 () Bool)

(assert (=> b!14424 (=> (not res!11066) (not e!8368))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!14424 (= res!11066 (iqInv!0 (array!1174 (store (arr!517 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!7896 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!7896) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!7896))) (size!517 iq!76))))))

(declare-fun b!14425 () Bool)

(assert (=> b!14425 (= e!8368 (and (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!14426 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1175 array!1173 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!410)

(assert (=> b!14426 (= e!8370 (computeModuloWhile!0 jz!20 q!31 lt!7895 jz!20 lt!7894))))

(declare-fun res!11062 () Bool)

(assert (=> start!2679 (=> (not res!11062) (not e!8371))))

(assert (=> start!2679 (= res!11062 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2679 e!8371))

(assert (=> start!2679 true))

(declare-fun array_inv!465 (array!1175) Bool)

(assert (=> start!2679 (array_inv!465 q!31)))

(declare-fun array_inv!466 (array!1173) Bool)

(assert (=> start!2679 (array_inv!466 iq!76)))

(declare-fun b!14421 () Bool)

(declare-fun res!11065 () Bool)

(assert (=> b!14421 (=> (not res!11065) (not e!8372))))

(assert (=> b!14421 (= res!11065 (and (bvsge (select (arr!517 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (= (and start!2679 res!11062) b!14422))

(assert (= (and b!14422 res!11061) b!14417))

(assert (= (and b!14417 c!1890) b!14426))

(assert (= (and b!14417 (not c!1890)) b!14423))

(assert (= (and b!14417 res!11060) b!14420))

(assert (= (and b!14420 res!11064) b!14421))

(assert (= (and b!14421 res!11065) b!14418))

(assert (= (and b!14418 res!11063) b!14419))

(assert (= (and b!14419 res!11059) b!14424))

(assert (= (and b!14424 res!11066) b!14425))

(declare-fun m!19951 () Bool)

(assert (=> b!14422 m!19951))

(declare-fun m!19953 () Bool)

(assert (=> b!14417 m!19953))

(declare-fun m!19955 () Bool)

(assert (=> b!14417 m!19955))

(declare-fun m!19957 () Bool)

(assert (=> b!14418 m!19957))

(declare-fun m!19959 () Bool)

(assert (=> b!14418 m!19959))

(declare-fun m!19961 () Bool)

(assert (=> b!14421 m!19961))

(declare-fun m!19963 () Bool)

(assert (=> start!2679 m!19963))

(declare-fun m!19965 () Bool)

(assert (=> start!2679 m!19965))

(declare-fun m!19967 () Bool)

(assert (=> b!14420 m!19967))

(declare-fun m!19969 () Bool)

(assert (=> b!14426 m!19969))

(declare-fun m!19971 () Bool)

(assert (=> b!14424 m!19971))

(declare-fun m!19973 () Bool)

(assert (=> b!14424 m!19973))

(check-sat (not b!14422) (not start!2679) (not b!14418) (not b!14420) (not b!14426) (not b!14424))
(check-sat)
