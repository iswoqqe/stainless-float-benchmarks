; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3029 () Bool)

(assert start!3029)

(declare-fun b!16759 () Bool)

(declare-fun e!9133 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!16759 (= e!9133 (and (not (= (bvand j!78 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand j!78 #b10000000000000000000000000000000) (bvand (bvsub j!78 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!16760 () Bool)

(declare-fun res!13203 () Bool)

(declare-fun e!9136 () Bool)

(assert (=> b!16760 (=> (not res!13203) (not e!9136))))

(declare-datatypes ((array!1308 0))(
  ( (array!1309 (arr!569 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!569 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1308)

(declare-fun qInv!0 (array!1308) Bool)

(assert (=> b!16760 (= res!13203 (qInv!0 q!79))))

(declare-fun b!16761 () Bool)

(assert (=> b!16761 (= e!9136 e!9133)))

(declare-fun res!13201 () Bool)

(assert (=> b!16761 (=> (not res!13201) (not e!9133))))

(declare-fun lt!8355 () (_ FloatingPoint 11 53))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun jz!49 () (_ BitVec 32))

(declare-datatypes ((array!1310 0))(
  ( (array!1311 (arr!570 (Array (_ BitVec 32) (_ BitVec 32))) (size!570 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1310)

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16761 (= res!13201 (QInt!0 (select (store (arr!570 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8355))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8355)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8355)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8355))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16761 (= lt!8355 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!16762 () Bool)

(declare-fun res!13206 () Bool)

(assert (=> b!16762 (=> (not res!13206) (not e!9136))))

(assert (=> b!16762 (= res!13206 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun res!13204 () Bool)

(assert (=> start!3029 (=> (not res!13204) (not e!9136))))

(assert (=> start!3029 (= res!13204 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!3029 e!9136))

(assert (=> start!3029 true))

(declare-fun array_inv!517 (array!1310) Bool)

(assert (=> start!3029 (array_inv!517 iq!146)))

(declare-fun array_inv!518 (array!1308) Bool)

(assert (=> start!3029 (array_inv!518 q!79)))

(declare-fun b!16763 () Bool)

(declare-fun res!13200 () Bool)

(assert (=> b!16763 (=> (not res!13200) (not e!9136))))

(declare-fun iqInv!0 (array!1310) Bool)

(assert (=> b!16763 (= res!13200 (iqInv!0 iq!146))))

(declare-fun b!16764 () Bool)

(declare-fun res!13202 () Bool)

(assert (=> b!16764 (=> (not res!13202) (not e!9133))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!16764 (= res!13202 (P!3 (select (arr!569 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!16765 () Bool)

(declare-fun res!13205 () Bool)

(assert (=> b!16765 (=> (not res!13205) (not e!9136))))

(assert (=> b!16765 (= res!13205 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16766 () Bool)

(declare-fun res!13199 () Bool)

(assert (=> b!16766 (=> (not res!13199) (not e!9133))))

(assert (=> b!16766 (= res!13199 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8355) (fp.leq lt!8355 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(assert (= (and start!3029 res!13204) b!16760))

(assert (= (and b!16760 res!13203) b!16765))

(assert (= (and b!16765 res!13205) b!16763))

(assert (= (and b!16763 res!13200) b!16762))

(assert (= (and b!16762 res!13206) b!16761))

(assert (= (and b!16761 res!13201) b!16766))

(assert (= (and b!16766 res!13199) b!16764))

(assert (= (and b!16764 res!13202) b!16759))

(declare-fun m!26783 () Bool)

(assert (=> start!3029 m!26783))

(declare-fun m!26785 () Bool)

(assert (=> start!3029 m!26785))

(declare-fun m!26787 () Bool)

(assert (=> b!16764 m!26787))

(assert (=> b!16764 m!26787))

(declare-fun m!26789 () Bool)

(assert (=> b!16764 m!26789))

(declare-fun m!26791 () Bool)

(assert (=> b!16760 m!26791))

(declare-fun m!26793 () Bool)

(assert (=> b!16761 m!26793))

(declare-fun m!26795 () Bool)

(assert (=> b!16761 m!26795))

(assert (=> b!16761 m!26795))

(declare-fun m!26797 () Bool)

(assert (=> b!16761 m!26797))

(declare-fun m!26799 () Bool)

(assert (=> b!16763 m!26799))

(push 1)

(assert (not b!16761))

(assert (not b!16763))

(assert (not start!3029))

(assert (not b!16760))

(assert (not b!16764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

