; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3071 () Bool)

(assert start!3071)

(declare-fun b!16991 () Bool)

(declare-fun res!13424 () Bool)

(declare-fun e!9263 () Bool)

(assert (=> b!16991 (=> (not res!13424) (not e!9263))))

(declare-datatypes ((array!1340 0))(
  ( (array!1341 (arr!583 (Array (_ BitVec 32) (_ BitVec 32))) (size!583 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1340)

(declare-fun iqInv!0 (array!1340) Bool)

(assert (=> b!16991 (= res!13424 (iqInv!0 iq!146))))

(declare-fun e!9265 () Bool)

(declare-fun lt!8436 () (_ BitVec 32))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(declare-fun lt!8435 () (_ FloatingPoint 11 53))

(declare-fun b!16992 () Bool)

(declare-datatypes ((array!1342 0))(
  ( (array!1343 (arr!584 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!584 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1342)

(assert (=> b!16992 (= e!9265 false)))

(assert (=> b!16992 (= lt!8436 (bvsub j!78 #b00000000000000000000000000000001))))

(declare-fun b!16993 () Bool)

(declare-fun res!13421 () Bool)

(assert (=> b!16993 (=> (not res!13421) (not e!9263))))

(declare-fun qInv!0 (array!1342) Bool)

(assert (=> b!16993 (= res!13421 (qInv!0 q!79))))

(declare-fun b!16995 () Bool)

(declare-fun res!13425 () Bool)

(assert (=> b!16995 (=> (not res!13425) (not e!9263))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(assert (=> b!16995 (= res!13425 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!16996 () Bool)

(declare-fun res!13422 () Bool)

(assert (=> b!16996 (=> (not res!13422) (not e!9263))))

(assert (=> b!16996 (= res!13422 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun res!13426 () Bool)

(assert (=> start!3071 (=> (not res!13426) (not e!9263))))

(assert (=> start!3071 (= res!13426 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!3071 e!9263))

(assert (=> start!3071 true))

(declare-fun array_inv!531 (array!1340) Bool)

(assert (=> start!3071 (array_inv!531 iq!146)))

(declare-fun array_inv!532 (array!1342) Bool)

(assert (=> start!3071 (array_inv!532 q!79)))

(declare-fun b!16994 () Bool)

(declare-fun res!13419 () Bool)

(assert (=> b!16994 (=> (not res!13419) (not e!9265))))

(assert (=> b!16994 (= res!13419 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8435) (fp.leq lt!8435 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(declare-fun b!16997 () Bool)

(declare-fun res!13420 () Bool)

(assert (=> b!16997 (=> (not res!13420) (not e!9265))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!16997 (= res!13420 (P!3 (select (arr!584 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!16998 () Bool)

(assert (=> b!16998 (= e!9263 e!9265)))

(declare-fun res!13423 () Bool)

(assert (=> b!16998 (=> (not res!13423) (not e!9265))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16998 (= res!13423 (QInt!0 (select (store (arr!583 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8435))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8435)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8435)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8435))))))) (bvsub jz!49 j!78))))))

(assert (=> b!16998 (= lt!8435 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(assert (= (and start!3071 res!13426) b!16993))

(assert (= (and b!16993 res!13421) b!16995))

(assert (= (and b!16995 res!13425) b!16991))

(assert (= (and b!16991 res!13424) b!16996))

(assert (= (and b!16996 res!13422) b!16998))

(assert (= (and b!16998 res!13423) b!16994))

(assert (= (and b!16994 res!13419) b!16997))

(assert (= (and b!16997 res!13420) b!16992))

(declare-fun m!26949 () Bool)

(assert (=> b!16993 m!26949))

(declare-fun m!26951 () Bool)

(assert (=> b!16998 m!26951))

(declare-fun m!26953 () Bool)

(assert (=> b!16998 m!26953))

(assert (=> b!16998 m!26953))

(declare-fun m!26955 () Bool)

(assert (=> b!16998 m!26955))

(declare-fun m!26957 () Bool)

(assert (=> b!16992 m!26957))

(declare-fun m!26959 () Bool)

(assert (=> b!16991 m!26959))

(declare-fun m!26961 () Bool)

(assert (=> start!3071 m!26961))

(declare-fun m!26963 () Bool)

(assert (=> start!3071 m!26963))

(assert (=> b!16997 m!26957))

(assert (=> b!16997 m!26957))

(declare-fun m!26965 () Bool)

(assert (=> b!16997 m!26965))

(push 1)

(assert (not b!16991))

(assert (not b!16997))

(assert (not b!16998))

(assert (not b!16993))

(assert (not start!3071))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

