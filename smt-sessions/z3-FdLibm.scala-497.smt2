; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2649 () Bool)

(assert start!2649)

(declare-fun b!14421 () Bool)

(declare-fun res!11148 () Bool)

(declare-fun e!8166 () Bool)

(assert (=> b!14421 (=> (not res!11148) (not e!8166))))

(declare-datatypes ((array!1130 0))(
  ( (array!1131 (arr!497 (Array (_ BitVec 32) (_ BitVec 32))) (size!497 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1130)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14421 (= res!11148 (QInt!0 (select (arr!497 iq!76) i!142)))))

(declare-fun b!14422 () Bool)

(declare-fun res!11144 () Bool)

(assert (=> b!14422 (=> (not res!11144) (not e!8166))))

(declare-fun iqInv!0 (array!1130) Bool)

(assert (=> b!14422 (= res!11144 (iqInv!0 iq!76))))

(declare-fun b!14423 () Bool)

(declare-fun res!11146 () Bool)

(assert (=> b!14423 (=> (not res!11146) (not e!8166))))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!14423 (= res!11146 (and (bvsge (select (arr!497 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!14424 () Bool)

(declare-datatypes ((Unit!1560 0))(
  ( (Unit!1561) )
))
(declare-datatypes ((tuple4!378 0))(
  ( (tuple4!379 (_1!383 Unit!1560) (_2!383 array!1130) (_3!320 (_ BitVec 32)) (_4!189 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8165 () tuple4!378)

(declare-fun lt!7661 () (_ FloatingPoint 11 53))

(declare-fun lt!7660 () array!1130)

(declare-fun Unit!1562 () Unit!1560)

(assert (=> b!14424 (= e!8165 (tuple4!379 Unit!1562 lt!7660 jz!20 lt!7661))))

(declare-fun b!14425 () Bool)

(assert (=> b!14425 (= e!8166 (and (= (bvand i!142 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!142 #b10000000000000000000000000000000) (bvand (bvadd i!142 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-datatypes ((array!1132 0))(
  ( (array!1133 (arr!498 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!498 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1132)

(declare-fun b!14426 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1132 array!1130 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!378)

(assert (=> b!14426 (= e!8165 (computeModuloWhile!0 jz!20 q!31 lt!7660 jz!20 lt!7661))))

(declare-fun res!11145 () Bool)

(declare-fun e!8164 () Bool)

(assert (=> start!2649 (=> (not res!11145) (not e!8164))))

(assert (=> start!2649 (= res!11145 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2649 e!8164))

(assert (=> start!2649 true))

(declare-fun array_inv!445 (array!1132) Bool)

(assert (=> start!2649 (array_inv!445 q!31)))

(declare-fun array_inv!446 (array!1130) Bool)

(assert (=> start!2649 (array_inv!446 iq!76)))

(declare-fun b!14427 () Bool)

(declare-fun res!11147 () Bool)

(assert (=> b!14427 (=> (not res!11147) (not e!8164))))

(declare-fun qInv!0 (array!1132) Bool)

(assert (=> b!14427 (= res!11147 (qInv!0 q!31))))

(declare-fun b!14428 () Bool)

(assert (=> b!14428 (= e!8164 e!8166)))

(declare-fun res!11143 () Bool)

(assert (=> b!14428 (=> (not res!11143) (not e!8166))))

(declare-fun lt!7659 () tuple4!378)

(declare-fun lt!7662 () (_ FloatingPoint 11 53))

(assert (=> b!14428 (= res!11143 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7662) (fp.lt lt!7662 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!497 (_2!383 lt!7659)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14428 (= lt!7662 (fp.sub roundNearestTiesToEven (_4!189 lt!7659) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!189 lt!7659) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!189 lt!7659) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!189 lt!7659) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!189 lt!7659) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14428 (= lt!7659 e!8165)))

(declare-fun c!1850 () Bool)

(assert (=> b!14428 (= c!1850 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14428 (= lt!7661 (select (arr!498 q!31) jz!20))))

(assert (=> b!14428 (= lt!7660 (array!1131 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!2649 res!11145) b!14427))

(assert (= (and b!14427 res!11147) b!14428))

(assert (= (and b!14428 c!1850) b!14426))

(assert (= (and b!14428 (not c!1850)) b!14424))

(assert (= (and b!14428 res!11143) b!14422))

(assert (= (and b!14422 res!11144) b!14423))

(assert (= (and b!14423 res!11146) b!14421))

(assert (= (and b!14421 res!11148) b!14425))

(declare-fun m!21953 () Bool)

(assert (=> start!2649 m!21953))

(declare-fun m!21955 () Bool)

(assert (=> start!2649 m!21955))

(declare-fun m!21957 () Bool)

(assert (=> b!14426 m!21957))

(declare-fun m!21959 () Bool)

(assert (=> b!14427 m!21959))

(declare-fun m!21961 () Bool)

(assert (=> b!14423 m!21961))

(declare-fun m!21963 () Bool)

(assert (=> b!14422 m!21963))

(declare-fun m!21965 () Bool)

(assert (=> b!14428 m!21965))

(declare-fun m!21967 () Bool)

(assert (=> b!14428 m!21967))

(declare-fun m!21969 () Bool)

(assert (=> b!14421 m!21969))

(assert (=> b!14421 m!21969))

(declare-fun m!21971 () Bool)

(assert (=> b!14421 m!21971))

(check-sat (not start!2649) (not b!14426) (not b!14421) (not b!14422) (not b!14427))
(check-sat)
