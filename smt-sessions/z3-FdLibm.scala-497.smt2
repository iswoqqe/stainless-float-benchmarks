; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2617 () Bool)

(assert start!2617)

(declare-fun b!13955 () Bool)

(declare-fun res!10718 () Bool)

(declare-fun e!8079 () Bool)

(assert (=> b!13955 (=> (not res!10718) (not e!8079))))

(declare-datatypes ((array!1127 0))(
  ( (array!1128 (arr!497 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!497 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1127)

(declare-fun qInv!0 (array!1127) Bool)

(assert (=> b!13955 (= res!10718 (qInv!0 q!31))))

(declare-fun b!13956 () Bool)

(declare-fun res!10720 () Bool)

(declare-fun e!8077 () Bool)

(assert (=> b!13956 (=> (not res!10720) (not e!8077))))

(declare-datatypes ((array!1129 0))(
  ( (array!1130 (arr!498 (Array (_ BitVec 32) (_ BitVec 32))) (size!498 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1129)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!13956 (= res!10720 (QInt!0 (select (arr!498 iq!76) i!142)))))

(declare-fun b!13957 () Bool)

(assert (=> b!13957 (= e!8079 e!8077)))

(declare-fun res!10722 () Bool)

(assert (=> b!13957 (=> (not res!10722) (not e!8077))))

(declare-datatypes ((Unit!1543 0))(
  ( (Unit!1544) )
))
(declare-datatypes ((tuple4!378 0))(
  ( (tuple4!379 (_1!383 Unit!1543) (_2!383 array!1129) (_3!320 (_ BitVec 32)) (_4!189 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7580 () tuple4!378)

(declare-fun lt!7579 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!13957 (= res!10722 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7579) (fp.lt lt!7579 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!498 (_2!383 lt!7580)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!13957 (= lt!7579 (fp.sub roundNearestTiesToEven (_4!189 lt!7580) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!189 lt!7580) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!189 lt!7580) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!189 lt!7580) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!189 lt!7580) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8080 () tuple4!378)

(assert (=> b!13957 (= lt!7580 e!8080)))

(declare-fun c!1830 () Bool)

(assert (=> b!13957 (= c!1830 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7578 () (_ FloatingPoint 11 53))

(assert (=> b!13957 (= lt!7578 (select (arr!497 q!31) jz!20))))

(declare-fun lt!7577 () array!1129)

(assert (=> b!13957 (= lt!7577 (array!1130 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!10719 () Bool)

(assert (=> start!2617 (=> (not res!10719) (not e!8079))))

(assert (=> start!2617 (= res!10719 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2617 e!8079))

(assert (=> start!2617 true))

(declare-fun array_inv!445 (array!1127) Bool)

(assert (=> start!2617 (array_inv!445 q!31)))

(declare-fun array_inv!446 (array!1129) Bool)

(assert (=> start!2617 (array_inv!446 iq!76)))

(declare-fun b!13958 () Bool)

(assert (=> b!13958 (= e!8077 (and (= (bvand i!142 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!142 #b10000000000000000000000000000000) (bvand (bvadd i!142 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!13959 () Bool)

(declare-fun Unit!1545 () Unit!1543)

(assert (=> b!13959 (= e!8080 (tuple4!379 Unit!1545 lt!7577 jz!20 lt!7578))))

(declare-fun b!13960 () Bool)

(declare-fun res!10717 () Bool)

(assert (=> b!13960 (=> (not res!10717) (not e!8077))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!13960 (= res!10717 (and (bvsge (select (arr!498 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!13961 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1127 array!1129 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!378)

(assert (=> b!13961 (= e!8080 (computeModuloWhile!0 jz!20 q!31 lt!7577 jz!20 lt!7578))))

(declare-fun b!13962 () Bool)

(declare-fun res!10721 () Bool)

(assert (=> b!13962 (=> (not res!10721) (not e!8077))))

(declare-fun iqInv!0 (array!1129) Bool)

(assert (=> b!13962 (= res!10721 (iqInv!0 iq!76))))

(assert (= (and start!2617 res!10719) b!13955))

(assert (= (and b!13955 res!10718) b!13957))

(assert (= (and b!13957 c!1830) b!13961))

(assert (= (and b!13957 (not c!1830)) b!13959))

(assert (= (and b!13957 res!10722) b!13962))

(assert (= (and b!13962 res!10721) b!13960))

(assert (= (and b!13960 res!10717) b!13956))

(assert (= (and b!13956 res!10720) b!13958))

(declare-fun m!19619 () Bool)

(assert (=> b!13956 m!19619))

(assert (=> b!13956 m!19619))

(declare-fun m!19621 () Bool)

(assert (=> b!13956 m!19621))

(declare-fun m!19623 () Bool)

(assert (=> b!13960 m!19623))

(declare-fun m!19625 () Bool)

(assert (=> b!13961 m!19625))

(declare-fun m!19627 () Bool)

(assert (=> b!13955 m!19627))

(declare-fun m!19629 () Bool)

(assert (=> start!2617 m!19629))

(declare-fun m!19631 () Bool)

(assert (=> start!2617 m!19631))

(declare-fun m!19633 () Bool)

(assert (=> b!13957 m!19633))

(declare-fun m!19635 () Bool)

(assert (=> b!13957 m!19635))

(declare-fun m!19637 () Bool)

(assert (=> b!13962 m!19637))

(check-sat (not b!13955) (not b!13956) (not b!13961) (not start!2617) (not b!13962))
(check-sat)
