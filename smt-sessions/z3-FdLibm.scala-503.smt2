; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2675 () Bool)

(assert start!2675)

(declare-fun b!14659 () Bool)

(declare-fun e!8321 () Bool)

(declare-fun e!8318 () Bool)

(assert (=> b!14659 (= e!8321 e!8318)))

(declare-fun res!11324 () Bool)

(assert (=> b!14659 (=> (not res!11324) (not e!8318))))

(declare-fun lt!7819 () (_ BitVec 32))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!14659 (= res!11324 (bvslt lt!7819 (bvsub jz!20 #b00000000000000000000000000000001)))))

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!14659 (= lt!7819 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun b!14660 () Bool)

(declare-fun e!8319 () Bool)

(declare-fun e!8322 () Bool)

(assert (=> b!14660 (= e!8319 e!8322)))

(declare-fun res!11323 () Bool)

(assert (=> b!14660 (=> (not res!11323) (not e!8322))))

(declare-fun lt!7818 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!1582 0))(
  ( (Unit!1583) )
))
(declare-datatypes ((array!1156 0))(
  ( (array!1157 (arr!509 (Array (_ BitVec 32) (_ BitVec 32))) (size!509 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!396 0))(
  ( (tuple4!397 (_1!392 Unit!1582) (_2!392 array!1156) (_3!329 (_ BitVec 32)) (_4!198 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7821 () tuple4!396)

(assert (=> b!14660 (= res!11323 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7818) (fp.lt lt!7818 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!509 (_2!392 lt!7821)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14660 (= lt!7818 (fp.sub roundNearestTiesToEven (_4!198 lt!7821) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!198 lt!7821) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!198 lt!7821) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!198 lt!7821) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!198 lt!7821) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8323 () tuple4!396)

(assert (=> b!14660 (= lt!7821 e!8323)))

(declare-fun c!1880 () Bool)

(assert (=> b!14660 (= c!1880 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7820 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!1158 0))(
  ( (array!1159 (arr!510 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!510 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1158)

(assert (=> b!14660 (= lt!7820 (select (arr!510 q!31) jz!20))))

(declare-fun lt!7823 () array!1156)

(assert (=> b!14660 (= lt!7823 (array!1157 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14661 () Bool)

(declare-fun res!11328 () Bool)

(assert (=> b!14661 (=> (not res!11328) (not e!8322))))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun iq!76 () array!1156)

(assert (=> b!14661 (= res!11328 (and (bvsge (select (arr!509 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!14662 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1158 array!1156 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!396)

(assert (=> b!14662 (= e!8323 (computeModuloWhile!0 jz!20 q!31 lt!7823 jz!20 lt!7820))))

(declare-fun b!14663 () Bool)

(declare-fun e!8325 () Bool)

(assert (=> b!14663 (= e!8318 e!8325)))

(declare-fun res!11329 () Bool)

(assert (=> b!14663 (=> (not res!11329) (not e!8325))))

(declare-datatypes ((tuple4!398 0))(
  ( (tuple4!399 (_1!393 Unit!1582) (_2!393 (_ BitVec 32)) (_3!330 array!1156) (_4!199 (_ BitVec 32))) )
))
(declare-fun lt!7824 () tuple4!398)

(assert (=> b!14663 (= res!11329 (and (bvsle #b00000000000000000000000000000000 (_2!393 lt!7824)) (bvsle (_2!393 lt!7824) (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun lt!7822 () (_ BitVec 32))

(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!1158 (_ BitVec 32) array!1156 (_ BitVec 32)) tuple4!398)

(assert (=> b!14663 (= lt!7824 (computeModuloWhile!3 jz!20 q!31 lt!7819 (array!1157 (store (arr!509 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!7822 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!7822) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!7822))) (size!509 iq!76)) (ite (and (= carry!33 #b00000000000000000000000000000000) (not (= lt!7822 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!33)))))

(declare-fun b!14664 () Bool)

(declare-fun res!11326 () Bool)

(assert (=> b!14664 (=> (not res!11326) (not e!8325))))

(declare-fun iqInv!0 (array!1156) Bool)

(assert (=> b!14664 (= res!11326 (iqInv!0 (_3!330 lt!7824)))))

(declare-fun res!11322 () Bool)

(assert (=> start!2675 (=> (not res!11322) (not e!8319))))

(assert (=> start!2675 (= res!11322 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2675 e!8319))

(assert (=> start!2675 true))

(declare-fun array_inv!457 (array!1158) Bool)

(assert (=> start!2675 (array_inv!457 q!31)))

(declare-fun array_inv!458 (array!1156) Bool)

(assert (=> start!2675 (array_inv!458 iq!76)))

(declare-fun b!14665 () Bool)

(assert (=> b!14665 (= e!8322 e!8321)))

(declare-fun res!11327 () Bool)

(assert (=> b!14665 (=> (not res!11327) (not e!8321))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14665 (= res!11327 (QInt!0 lt!7822))))

(assert (=> b!14665 (= lt!7822 (select (arr!509 iq!76) i!142))))

(declare-fun b!14666 () Bool)

(declare-fun res!11321 () Bool)

(assert (=> b!14666 (=> (not res!11321) (not e!8322))))

(assert (=> b!14666 (= res!11321 (iqInv!0 iq!76))))

(declare-fun b!14667 () Bool)

(declare-fun Unit!1584 () Unit!1582)

(assert (=> b!14667 (= e!8323 (tuple4!397 Unit!1584 lt!7823 jz!20 lt!7820))))

(declare-fun b!14668 () Bool)

(assert (=> b!14668 (= e!8325 (and (bvsge (select (arr!509 (_3!330 lt!7824)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= (_4!199 lt!7824) #b00000000000000000000000000000000) (= (_4!199 lt!7824) #b00000000000000000000000000000001)) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!14669 () Bool)

(declare-fun res!11325 () Bool)

(assert (=> b!14669 (=> (not res!11325) (not e!8319))))

(declare-fun qInv!0 (array!1158) Bool)

(assert (=> b!14669 (= res!11325 (qInv!0 q!31))))

(assert (= (and start!2675 res!11322) b!14669))

(assert (= (and b!14669 res!11325) b!14660))

(assert (= (and b!14660 c!1880) b!14662))

(assert (= (and b!14660 (not c!1880)) b!14667))

(assert (= (and b!14660 res!11323) b!14666))

(assert (= (and b!14666 res!11321) b!14661))

(assert (= (and b!14661 res!11328) b!14665))

(assert (= (and b!14665 res!11327) b!14659))

(assert (= (and b!14659 res!11324) b!14663))

(assert (= (and b!14663 res!11329) b!14664))

(assert (= (and b!14664 res!11326) b!14668))

(declare-fun m!22123 () Bool)

(assert (=> b!14660 m!22123))

(declare-fun m!22125 () Bool)

(assert (=> b!14660 m!22125))

(declare-fun m!22127 () Bool)

(assert (=> b!14666 m!22127))

(declare-fun m!22129 () Bool)

(assert (=> start!2675 m!22129))

(declare-fun m!22131 () Bool)

(assert (=> start!2675 m!22131))

(declare-fun m!22133 () Bool)

(assert (=> b!14669 m!22133))

(declare-fun m!22135 () Bool)

(assert (=> b!14661 m!22135))

(declare-fun m!22137 () Bool)

(assert (=> b!14668 m!22137))

(declare-fun m!22139 () Bool)

(assert (=> b!14663 m!22139))

(declare-fun m!22141 () Bool)

(assert (=> b!14663 m!22141))

(declare-fun m!22143 () Bool)

(assert (=> b!14664 m!22143))

(declare-fun m!22145 () Bool)

(assert (=> b!14662 m!22145))

(declare-fun m!22147 () Bool)

(assert (=> b!14665 m!22147))

(declare-fun m!22149 () Bool)

(assert (=> b!14665 m!22149))

(check-sat (not b!14663) (not b!14665) (not b!14662) (not b!14669) (not b!14666) (not start!2675) (not b!14664))
(check-sat)
