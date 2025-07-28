; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2553 () Bool)

(assert start!2553)

(declare-fun b!13915 () Bool)

(declare-fun res!10752 () Bool)

(declare-fun e!7887 () Bool)

(assert (=> b!13915 (=> (not res!10752) (not e!7887))))

(declare-datatypes ((array!1070 0))(
  ( (array!1071 (arr!473 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!473 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1070)

(declare-fun qInv!0 (array!1070) Bool)

(assert (=> b!13915 (= res!10752 (qInv!0 q!31))))

(declare-fun b!13916 () Bool)

(declare-datatypes ((array!1072 0))(
  ( (array!1073 (arr!474 (Array (_ BitVec 32) (_ BitVec 32))) (size!474 (_ BitVec 32))) )
))
(declare-fun lt!7408 () array!1072)

(declare-datatypes ((Unit!1516 0))(
  ( (Unit!1517) )
))
(declare-datatypes ((tuple4!354 0))(
  ( (tuple4!355 (_1!371 Unit!1516) (_2!371 array!1072) (_3!308 (_ BitVec 32)) (_4!177 (_ FloatingPoint 11 53))) )
))
(declare-fun e!7881 () tuple4!354)

(declare-fun lt!7406 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun Unit!1518 () Unit!1516)

(assert (=> b!13916 (= e!7881 (tuple4!355 Unit!1518 lt!7408 jz!20 lt!7406))))

(declare-fun b!13917 () Bool)

(declare-fun res!10753 () Bool)

(declare-fun e!7884 () Bool)

(assert (=> b!13917 (=> (not res!10753) (not e!7884))))

(declare-fun iq!76 () array!1072)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!13917 (= res!10753 (QInt!0 (select (arr!474 iq!76) i!142)))))

(declare-fun b!13918 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1070 array!1072 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!354)

(assert (=> b!13918 (= e!7881 (computeModuloWhile!0 jz!20 q!31 lt!7408 jz!20 lt!7406))))

(declare-fun b!13919 () Bool)

(declare-fun res!10750 () Bool)

(assert (=> b!13919 (=> (not res!10750) (not e!7884))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!13919 (= res!10750 (and (bvsge (select (arr!474 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun e!7882 () tuple4!354)

(declare-fun b!13920 () Bool)

(declare-fun lt!7414 () array!1072)

(declare-fun lt!7411 () (_ FloatingPoint 11 53))

(declare-fun Unit!1519 () Unit!1516)

(assert (=> b!13920 (= e!7882 (tuple4!355 Unit!1519 lt!7414 jz!20 lt!7411))))

(declare-fun b!13921 () Bool)

(assert (=> b!13921 (= e!7887 e!7884)))

(declare-fun res!10751 () Bool)

(assert (=> b!13921 (=> (not res!10751) (not e!7884))))

(declare-fun lt!7410 () (_ FloatingPoint 11 53))

(declare-fun lt!7407 () tuple4!354)

(assert (=> b!13921 (= res!10751 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7410) (fp.lt lt!7410 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!474 (_2!371 lt!7407)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!13921 (= lt!7410 (fp.sub roundNearestTiesToEven (_4!177 lt!7407) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!177 lt!7407) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!177 lt!7407) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!177 lt!7407) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!177 lt!7407) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!13921 (= lt!7407 e!7881)))

(declare-fun c!1794 () Bool)

(assert (=> b!13921 (= c!1794 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!13921 (= lt!7406 (select (arr!473 q!31) jz!20))))

(assert (=> b!13921 (= lt!7408 (array!1073 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun lt!7413 () tuple4!354)

(declare-fun b!13922 () Bool)

(declare-fun lt!7412 () (_ FloatingPoint 11 53))

(declare-fun e!7885 () Bool)

(declare-fun lt!7409 () (_ BitVec 32))

(assert (=> b!13922 (= e!7885 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7412) (fp.lt lt!7412 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!474 (_2!371 lt!7413)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsge lt!7409 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!13922 (= lt!7412 (fp.sub roundNearestTiesToEven (_4!177 lt!7413) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!177 lt!7413) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!177 lt!7413) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!177 lt!7413) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!177 lt!7413) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!13922 (= lt!7413 e!7882)))

(declare-fun c!1795 () Bool)

(assert (=> b!13922 (= c!1795 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!13922 (= lt!7411 (select (arr!473 q!31) jz!20))))

(assert (=> b!13922 (= lt!7414 (array!1073 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!13923 () Bool)

(assert (=> b!13923 (= e!7882 (computeModuloWhile!0 jz!20 q!31 lt!7414 jz!20 lt!7411))))

(declare-fun b!13924 () Bool)

(declare-fun res!10749 () Bool)

(assert (=> b!13924 (=> (not res!10749) (not e!7884))))

(declare-fun iqInv!0 (array!1072) Bool)

(assert (=> b!13924 (= res!10749 (iqInv!0 iq!76))))

(declare-fun res!10755 () Bool)

(assert (=> start!2553 (=> (not res!10755) (not e!7887))))

(assert (=> start!2553 (= res!10755 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2553 e!7887))

(assert (=> start!2553 true))

(declare-fun array_inv!422 (array!1070) Bool)

(assert (=> start!2553 (array_inv!422 q!31)))

(declare-fun array_inv!423 (array!1072) Bool)

(assert (=> start!2553 (array_inv!423 iq!76)))

(declare-fun b!13925 () Bool)

(assert (=> b!13925 (= e!7884 e!7885)))

(declare-fun res!10754 () Bool)

(assert (=> b!13925 (=> (not res!10754) (not e!7885))))

(assert (=> b!13925 (= res!10754 (bvslt lt!7409 (bvsub jz!20 #b00000000000000000000000000000001)))))

(assert (=> b!13925 (= lt!7409 (bvadd i!142 #b00000000000000000000000000000001))))

(assert (= (and start!2553 res!10755) b!13915))

(assert (= (and b!13915 res!10752) b!13921))

(assert (= (and b!13921 c!1794) b!13918))

(assert (= (and b!13921 (not c!1794)) b!13916))

(assert (= (and b!13921 res!10751) b!13924))

(assert (= (and b!13924 res!10749) b!13919))

(assert (= (and b!13919 res!10750) b!13917))

(assert (= (and b!13917 res!10753) b!13925))

(assert (= (and b!13925 res!10754) b!13922))

(assert (= (and b!13922 c!1795) b!13923))

(assert (= (and b!13922 (not c!1795)) b!13920))

(declare-fun m!21409 () Bool)

(assert (=> b!13915 m!21409))

(declare-fun m!21411 () Bool)

(assert (=> b!13919 m!21411))

(declare-fun m!21413 () Bool)

(assert (=> start!2553 m!21413))

(declare-fun m!21415 () Bool)

(assert (=> start!2553 m!21415))

(declare-fun m!21417 () Bool)

(assert (=> b!13923 m!21417))

(declare-fun m!21419 () Bool)

(assert (=> b!13921 m!21419))

(declare-fun m!21421 () Bool)

(assert (=> b!13921 m!21421))

(declare-fun m!21423 () Bool)

(assert (=> b!13922 m!21423))

(assert (=> b!13922 m!21421))

(declare-fun m!21425 () Bool)

(assert (=> b!13917 m!21425))

(assert (=> b!13917 m!21425))

(declare-fun m!21427 () Bool)

(assert (=> b!13917 m!21427))

(declare-fun m!21429 () Bool)

(assert (=> b!13918 m!21429))

(declare-fun m!21431 () Bool)

(assert (=> b!13924 m!21431))

(check-sat (not b!13918) (not start!2553) (not b!13917) (not b!13923) (not b!13924) (not b!13915))
(check-sat)
