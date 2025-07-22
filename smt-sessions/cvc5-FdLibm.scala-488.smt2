; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2729 () Bool)

(assert start!2729)

(declare-fun res!11676 () Bool)

(declare-fun e!8202 () Bool)

(assert (=> start!2729 (=> (not res!11676) (not e!8202))))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> start!2729 (= res!11676 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2729 e!8202))

(assert (=> start!2729 true))

(declare-datatypes ((array!1094 0))(
  ( (array!1095 (arr!479 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!479 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1094)

(declare-fun array_inv!427 (array!1094) Bool)

(assert (=> start!2729 (array_inv!427 q!31)))

(declare-datatypes ((array!1096 0))(
  ( (array!1097 (arr!480 (Array (_ BitVec 32) (_ BitVec 32))) (size!480 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1096)

(declare-fun array_inv!428 (array!1096) Bool)

(assert (=> start!2729 (array_inv!428 iq!76)))

(declare-fun b!14987 () Bool)

(declare-fun res!11675 () Bool)

(assert (=> b!14987 (=> (not res!11675) (not e!8202))))

(declare-fun qInv!0 (array!1094) Bool)

(assert (=> b!14987 (= res!11675 (qInv!0 q!31))))

(declare-datatypes ((Unit!1574 0))(
  ( (Unit!1575) )
))
(declare-datatypes ((tuple4!360 0))(
  ( (tuple4!361 (_1!379 Unit!1574) (_2!379 array!1096) (_3!311 (_ BitVec 32)) (_4!180 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8204 () tuple4!360)

(declare-fun b!14988 () Bool)

(declare-fun lt!7688 () (_ FloatingPoint 11 53))

(declare-fun lt!7686 () array!1096)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1094 array!1096 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!360)

(assert (=> b!14988 (= e!8204 (computeModuloWhile!0 jz!20 q!31 lt!7686 jz!20 lt!7688))))

(declare-fun b!14989 () Bool)

(declare-fun e!8203 () Bool)

(assert (=> b!14989 (= e!8202 e!8203)))

(declare-fun res!11673 () Bool)

(assert (=> b!14989 (=> (not res!11673) (not e!8203))))

(declare-fun lt!7685 () (_ FloatingPoint 11 53))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!7687 () tuple4!360)

(assert (=> b!14989 (= res!11673 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7685) (fp.lt lt!7685 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!480 (_2!379 lt!7687)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14989 (= lt!7685 (fp.sub roundNearestTiesToEven (_4!180 lt!7687) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!180 lt!7687) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!180 lt!7687) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!180 lt!7687) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!180 lt!7687) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14989 (= lt!7687 e!8204)))

(declare-fun c!1868 () Bool)

(assert (=> b!14989 (= c!1868 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14989 (= lt!7688 (select (arr!479 q!31) jz!20))))

(assert (=> b!14989 (= lt!7686 (array!1097 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14990 () Bool)

(assert (=> b!14990 (= e!8203 (and (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!14991 () Bool)

(declare-fun res!11674 () Bool)

(assert (=> b!14991 (=> (not res!11674) (not e!8203))))

(declare-fun iqInv!0 (array!1096) Bool)

(assert (=> b!14991 (= res!11674 (iqInv!0 iq!76))))

(declare-fun b!14992 () Bool)

(declare-fun Unit!1576 () Unit!1574)

(assert (=> b!14992 (= e!8204 (tuple4!361 Unit!1576 lt!7686 jz!20 lt!7688))))

(assert (= (and start!2729 res!11676) b!14987))

(assert (= (and b!14987 res!11675) b!14989))

(assert (= (and b!14989 c!1868) b!14988))

(assert (= (and b!14989 (not c!1868)) b!14992))

(assert (= (and b!14989 res!11673) b!14991))

(assert (= (and b!14991 res!11674) b!14990))

(declare-fun m!24575 () Bool)

(assert (=> b!14989 m!24575))

(declare-fun m!24577 () Bool)

(assert (=> b!14989 m!24577))

(declare-fun m!24579 () Bool)

(assert (=> start!2729 m!24579))

(declare-fun m!24581 () Bool)

(assert (=> start!2729 m!24581))

(declare-fun m!24583 () Bool)

(assert (=> b!14988 m!24583))

(declare-fun m!24585 () Bool)

(assert (=> b!14991 m!24585))

(declare-fun m!24587 () Bool)

(assert (=> b!14987 m!24587))

(push 1)

(assert (not b!14988))

(assert (not b!14987))

(assert (not b!14991))

(assert (not start!2729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

