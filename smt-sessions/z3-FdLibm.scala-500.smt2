; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2623 () Bool)

(assert start!2623)

(declare-datatypes ((array!1139 0))(
  ( (array!1140 (arr!503 (Array (_ BitVec 32) (_ BitVec 32))) (size!503 (_ BitVec 32))) )
))
(declare-fun lt!7631 () array!1139)

(declare-datatypes ((array!1141 0))(
  ( (array!1142 (arr!504 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!504 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1141)

(declare-fun b!14040 () Bool)

(declare-datatypes ((Unit!1553 0))(
  ( (Unit!1554) )
))
(declare-datatypes ((tuple4!384 0))(
  ( (tuple4!385 (_1!386 Unit!1553) (_2!386 array!1139) (_3!323 (_ BitVec 32)) (_4!192 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8137 () tuple4!384)

(declare-fun lt!7629 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1141 array!1139 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!384)

(assert (=> b!14040 (= e!8137 (computeModuloWhile!0 jz!20 q!31 lt!7631 jz!20 lt!7629))))

(declare-fun b!14041 () Bool)

(declare-fun e!8134 () Bool)

(assert (=> b!14041 (= e!8134 (and (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!14042 () Bool)

(declare-fun Unit!1555 () Unit!1553)

(assert (=> b!14042 (= e!8137 (tuple4!385 Unit!1555 lt!7631 jz!20 lt!7629))))

(declare-fun b!14043 () Bool)

(declare-fun e!8136 () Bool)

(assert (=> b!14043 (= e!8136 e!8134)))

(declare-fun res!10778 () Bool)

(assert (=> b!14043 (=> (not res!10778) (not e!8134))))

(declare-fun lt!7632 () (_ BitVec 32))

(assert (=> b!14043 (= res!10778 (bvslt lt!7632 (bvsub jz!20 #b00000000000000000000000000000001)))))

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!14043 (= lt!7632 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun res!10785 () Bool)

(declare-fun e!8133 () Bool)

(assert (=> start!2623 (=> (not res!10785) (not e!8133))))

(assert (=> start!2623 (= res!10785 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2623 e!8133))

(assert (=> start!2623 true))

(declare-fun array_inv!451 (array!1141) Bool)

(assert (=> start!2623 (array_inv!451 q!31)))

(declare-fun iq!76 () array!1139)

(declare-fun array_inv!452 (array!1139) Bool)

(assert (=> start!2623 (array_inv!452 iq!76)))

(declare-fun b!14044 () Bool)

(declare-fun res!10782 () Bool)

(declare-fun e!8135 () Bool)

(assert (=> b!14044 (=> (not res!10782) (not e!8135))))

(declare-fun iqInv!0 (array!1139) Bool)

(assert (=> b!14044 (= res!10782 (iqInv!0 iq!76))))

(declare-fun b!14045 () Bool)

(declare-fun res!10783 () Bool)

(assert (=> b!14045 (=> (not res!10783) (not e!8133))))

(declare-fun qInv!0 (array!1141) Bool)

(assert (=> b!14045 (= res!10783 (qInv!0 q!31))))

(declare-fun b!14046 () Bool)

(assert (=> b!14046 (= e!8133 e!8135)))

(declare-fun res!10779 () Bool)

(assert (=> b!14046 (=> (not res!10779) (not e!8135))))

(declare-fun lt!7634 () (_ FloatingPoint 11 53))

(declare-fun lt!7633 () tuple4!384)

(assert (=> b!14046 (= res!10779 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7634) (fp.lt lt!7634 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!503 (_2!386 lt!7633)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14046 (= lt!7634 (fp.sub roundNearestTiesToEven (_4!192 lt!7633) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!192 lt!7633) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!192 lt!7633) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!192 lt!7633) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!192 lt!7633) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14046 (= lt!7633 e!8137)))

(declare-fun c!1842 () Bool)

(assert (=> b!14046 (= c!1842 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14046 (= lt!7629 (select (arr!504 q!31) jz!20))))

(assert (=> b!14046 (= lt!7631 (array!1140 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14047 () Bool)

(assert (=> b!14047 (= e!8135 e!8136)))

(declare-fun res!10784 () Bool)

(assert (=> b!14047 (=> (not res!10784) (not e!8136))))

(declare-fun lt!7630 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14047 (= res!10784 (QInt!0 lt!7630))))

(assert (=> b!14047 (= lt!7630 (select (arr!503 iq!76) i!142))))

(declare-fun b!14048 () Bool)

(declare-fun res!10780 () Bool)

(assert (=> b!14048 (=> (not res!10780) (not e!8134))))

(declare-fun carry!33 () (_ BitVec 32))

(declare-datatypes ((tuple4!386 0))(
  ( (tuple4!387 (_1!387 Unit!1553) (_2!387 (_ BitVec 32)) (_3!324 array!1139) (_4!193 (_ BitVec 32))) )
))
(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!1141 (_ BitVec 32) array!1139 (_ BitVec 32)) tuple4!386)

(assert (=> b!14048 (= res!10780 (bvsle #b00000000000000000000000000000000 (_2!387 (computeModuloWhile!3 jz!20 q!31 lt!7632 (array!1140 (store (arr!503 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!7630 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!7630) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!7630))) (size!503 iq!76)) (ite (and (= carry!33 #b00000000000000000000000000000000) (not (= lt!7630 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!33)))))))

(declare-fun b!14049 () Bool)

(declare-fun res!10781 () Bool)

(assert (=> b!14049 (=> (not res!10781) (not e!8135))))

(assert (=> b!14049 (= res!10781 (and (bvsge (select (arr!503 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (= (and start!2623 res!10785) b!14045))

(assert (= (and b!14045 res!10783) b!14046))

(assert (= (and b!14046 c!1842) b!14040))

(assert (= (and b!14046 (not c!1842)) b!14042))

(assert (= (and b!14046 res!10779) b!14044))

(assert (= (and b!14044 res!10782) b!14049))

(assert (= (and b!14049 res!10781) b!14047))

(assert (= (and b!14047 res!10784) b!14043))

(assert (= (and b!14043 res!10778) b!14048))

(assert (= (and b!14048 res!10780) b!14041))

(declare-fun m!19681 () Bool)

(assert (=> b!14048 m!19681))

(declare-fun m!19683 () Bool)

(assert (=> b!14048 m!19683))

(declare-fun m!19685 () Bool)

(assert (=> b!14045 m!19685))

(declare-fun m!19687 () Bool)

(assert (=> b!14047 m!19687))

(declare-fun m!19689 () Bool)

(assert (=> b!14047 m!19689))

(declare-fun m!19691 () Bool)

(assert (=> b!14044 m!19691))

(declare-fun m!19693 () Bool)

(assert (=> b!14049 m!19693))

(declare-fun m!19695 () Bool)

(assert (=> b!14046 m!19695))

(declare-fun m!19697 () Bool)

(assert (=> b!14046 m!19697))

(declare-fun m!19699 () Bool)

(assert (=> b!14040 m!19699))

(declare-fun m!19701 () Bool)

(assert (=> start!2623 m!19701))

(declare-fun m!19703 () Bool)

(assert (=> start!2623 m!19703))

(check-sat (not b!14045) (not b!14048) (not b!14044) (not start!2623) (not b!14047) (not b!14040))
(check-sat)
