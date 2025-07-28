; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2589 () Bool)

(assert start!2589)

(declare-fun b!14177 () Bool)

(declare-fun e!7994 () Bool)

(declare-fun carry!33 () (_ BitVec 32))

(declare-datatypes ((array!1094 0))(
  ( (array!1095 (arr!483 (Array (_ BitVec 32) (_ BitVec 32))) (size!483 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1094)

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!14177 (= e!7994 (and (bvsge (select (arr!483 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun res!10967 () Bool)

(declare-fun e!7993 () Bool)

(assert (=> start!2589 (=> (not res!10967) (not e!7993))))

(assert (=> start!2589 (= res!10967 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2589 e!7993))

(assert (=> start!2589 true))

(declare-datatypes ((array!1096 0))(
  ( (array!1097 (arr!484 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!484 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1096)

(declare-fun array_inv!431 (array!1096) Bool)

(assert (=> start!2589 (array_inv!431 q!31)))

(declare-fun array_inv!432 (array!1094) Bool)

(assert (=> start!2589 (array_inv!432 iq!76)))

(declare-fun b!14178 () Bool)

(declare-fun lt!7512 () array!1094)

(declare-datatypes ((Unit!1535 0))(
  ( (Unit!1536) )
))
(declare-datatypes ((tuple4!364 0))(
  ( (tuple4!365 (_1!376 Unit!1535) (_2!376 array!1094) (_3!313 (_ BitVec 32)) (_4!182 (_ FloatingPoint 11 53))) )
))
(declare-fun e!7997 () tuple4!364)

(declare-fun lt!7511 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1096 array!1094 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!364)

(assert (=> b!14178 (= e!7997 (computeModuloWhile!0 jz!20 q!31 lt!7512 jz!20 lt!7511))))

(declare-fun b!14179 () Bool)

(declare-fun Unit!1537 () Unit!1535)

(assert (=> b!14179 (= e!7997 (tuple4!365 Unit!1537 lt!7512 jz!20 lt!7511))))

(declare-fun b!14180 () Bool)

(declare-fun res!10968 () Bool)

(assert (=> b!14180 (=> (not res!10968) (not e!7993))))

(declare-fun qInv!0 (array!1096) Bool)

(assert (=> b!14180 (= res!10968 (qInv!0 q!31))))

(declare-fun b!14181 () Bool)

(declare-fun res!10966 () Bool)

(assert (=> b!14181 (=> (not res!10966) (not e!7994))))

(declare-fun iqInv!0 (array!1094) Bool)

(assert (=> b!14181 (= res!10966 (iqInv!0 iq!76))))

(declare-fun b!14182 () Bool)

(assert (=> b!14182 (= e!7993 e!7994)))

(declare-fun res!10965 () Bool)

(assert (=> b!14182 (=> (not res!10965) (not e!7994))))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!7509 () tuple4!364)

(declare-fun lt!7510 () (_ FloatingPoint 11 53))

(assert (=> b!14182 (= res!10965 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7510) (fp.lt lt!7510 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!483 (_2!376 lt!7509)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14182 (= lt!7510 (fp.sub roundNearestTiesToEven (_4!182 lt!7509) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!182 lt!7509) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!182 lt!7509) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!182 lt!7509) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!182 lt!7509) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14182 (= lt!7509 e!7997)))

(declare-fun c!1817 () Bool)

(assert (=> b!14182 (= c!1817 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14182 (= lt!7511 (select (arr!484 q!31) jz!20))))

(assert (=> b!14182 (= lt!7512 (array!1095 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!2589 res!10967) b!14180))

(assert (= (and b!14180 res!10968) b!14182))

(assert (= (and b!14182 c!1817) b!14178))

(assert (= (and b!14182 (not c!1817)) b!14179))

(assert (= (and b!14182 res!10965) b!14181))

(assert (= (and b!14181 res!10966) b!14177))

(declare-fun m!21773 () Bool)

(assert (=> b!14182 m!21773))

(declare-fun m!21775 () Bool)

(assert (=> b!14182 m!21775))

(declare-fun m!21777 () Bool)

(assert (=> b!14178 m!21777))

(declare-fun m!21779 () Bool)

(assert (=> b!14181 m!21779))

(declare-fun m!21781 () Bool)

(assert (=> b!14180 m!21781))

(declare-fun m!21783 () Bool)

(assert (=> start!2589 m!21783))

(declare-fun m!21785 () Bool)

(assert (=> start!2589 m!21785))

(declare-fun m!21787 () Bool)

(assert (=> b!14177 m!21787))

(check-sat (not b!14181) (not b!14178) (not b!14180) (not start!2589))
(check-sat)
