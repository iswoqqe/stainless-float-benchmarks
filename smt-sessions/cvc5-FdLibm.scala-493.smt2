; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2749 () Bool)

(assert start!2749)

(declare-fun b!15101 () Bool)

(declare-fun e!8292 () Bool)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun carry!33 () (_ BitVec 32))

(declare-datatypes ((array!1116 0))(
  ( (array!1117 (arr!489 (Array (_ BitVec 32) (_ BitVec 32))) (size!489 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1116)

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!15101 (= e!8292 (and (bvsge (select (arr!489 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001)) (or (bvslt i!142 #b00000000000000000000000000000000) (bvsge i!142 (size!489 iq!76)))))))

(declare-datatypes ((array!1118 0))(
  ( (array!1119 (arr!490 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!490 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1118)

(declare-fun lt!7764 () array!1116)

(declare-fun b!15102 () Bool)

(declare-datatypes ((Unit!1590 0))(
  ( (Unit!1591) )
))
(declare-datatypes ((tuple4!370 0))(
  ( (tuple4!371 (_1!384 Unit!1590) (_2!384 array!1116) (_3!316 (_ BitVec 32)) (_4!185 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8294 () tuple4!370)

(declare-fun lt!7763 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1118 array!1116 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!370)

(assert (=> b!15102 (= e!8294 (computeModuloWhile!0 jz!20 q!31 lt!7764 jz!20 lt!7763))))

(declare-fun b!15103 () Bool)

(declare-fun Unit!1592 () Unit!1590)

(assert (=> b!15103 (= e!8294 (tuple4!371 Unit!1592 lt!7764 jz!20 lt!7763))))

(declare-fun b!15104 () Bool)

(declare-fun res!11754 () Bool)

(declare-fun e!8291 () Bool)

(assert (=> b!15104 (=> (not res!11754) (not e!8291))))

(declare-fun qInv!0 (array!1118) Bool)

(assert (=> b!15104 (= res!11754 (qInv!0 q!31))))

(declare-fun b!15106 () Bool)

(assert (=> b!15106 (= e!8291 e!8292)))

(declare-fun res!11751 () Bool)

(assert (=> b!15106 (=> (not res!11751) (not e!8292))))

(declare-fun lt!7765 () tuple4!370)

(declare-fun lt!7766 () (_ FloatingPoint 11 53))

(assert (=> b!15106 (= res!11751 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7766) (fp.lt lt!7766 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!489 (_2!384 lt!7765)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15106 (= lt!7766 (fp.sub roundNearestTiesToEven (_4!185 lt!7765) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!185 lt!7765) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!185 lt!7765) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!185 lt!7765) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!185 lt!7765) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!15106 (= lt!7765 e!8294)))

(declare-fun c!1886 () Bool)

(assert (=> b!15106 (= c!1886 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!15106 (= lt!7763 (select (arr!490 q!31) jz!20))))

(assert (=> b!15106 (= lt!7764 (array!1117 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!11752 () Bool)

(assert (=> start!2749 (=> (not res!11752) (not e!8291))))

(assert (=> start!2749 (= res!11752 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2749 e!8291))

(assert (=> start!2749 true))

(declare-fun array_inv!437 (array!1118) Bool)

(assert (=> start!2749 (array_inv!437 q!31)))

(declare-fun array_inv!438 (array!1116) Bool)

(assert (=> start!2749 (array_inv!438 iq!76)))

(declare-fun b!15105 () Bool)

(declare-fun res!11753 () Bool)

(assert (=> b!15105 (=> (not res!11753) (not e!8292))))

(declare-fun iqInv!0 (array!1116) Bool)

(assert (=> b!15105 (= res!11753 (iqInv!0 iq!76))))

(assert (= (and start!2749 res!11752) b!15104))

(assert (= (and b!15104 res!11754) b!15106))

(assert (= (and b!15106 c!1886) b!15102))

(assert (= (and b!15106 (not c!1886)) b!15103))

(assert (= (and b!15106 res!11751) b!15105))

(assert (= (and b!15105 res!11753) b!15101))

(declare-fun m!24665 () Bool)

(assert (=> b!15106 m!24665))

(declare-fun m!24667 () Bool)

(assert (=> b!15106 m!24667))

(declare-fun m!24669 () Bool)

(assert (=> b!15104 m!24669))

(declare-fun m!24671 () Bool)

(assert (=> b!15105 m!24671))

(declare-fun m!24673 () Bool)

(assert (=> b!15101 m!24673))

(declare-fun m!24675 () Bool)

(assert (=> start!2749 m!24675))

(declare-fun m!24677 () Bool)

(assert (=> start!2749 m!24677))

(declare-fun m!24679 () Bool)

(assert (=> b!15102 m!24679))

(push 1)

(assert (not start!2749))

(assert (not b!15104))

(assert (not b!15102))

(assert (not b!15105))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7559 () Bool)

(assert (=> d!7559 (= (array_inv!437 q!31) (bvsge (size!490 q!31) #b00000000000000000000000000000000))))

(assert (=> start!2749 d!7559))

(declare-fun d!7561 () Bool)

(assert (=> d!7561 (= (array_inv!438 iq!76) (bvsge (size!489 iq!76) #b00000000000000000000000000000000))))

(assert (=> start!2749 d!7561))

(declare-fun d!7563 () Bool)

(declare-fun res!11757 () Bool)

(declare-fun e!8298 () Bool)

(assert (=> d!7563 (=> (not res!11757) (not e!8298))))

(assert (=> d!7563 (= res!11757 (= (size!490 q!31) #b00000000000000000000000000010100))))

(assert (=> d!7563 (= (qInv!0 q!31) e!8298)))

(declare-fun b!15109 () Bool)

(declare-fun lambda!672 () Int)

(declare-fun all20!0 (array!1118 Int) Bool)

(assert (=> b!15109 (= e!8298 (all20!0 q!31 lambda!672))))

(assert (= (and d!7563 res!11757) b!15109))

(declare-fun m!24681 () Bool)

(assert (=> b!15109 m!24681))

(assert (=> b!15104 d!7563))

(declare-fun d!7565 () Bool)

(declare-fun e!8306 () Bool)

(assert (=> d!7565 e!8306))

(declare-fun res!11768 () Bool)

(assert (=> d!7565 (=> (not res!11768) (not e!8306))))

(declare-fun lt!7777 () tuple4!370)

(assert (=> d!7565 (= res!11768 (and true true (bvsle #b00000000000000000000000000000000 (_3!316 lt!7777)) (bvsle (_3!316 lt!7777) jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!185 lt!7777)) (fp.leq (_4!185 lt!7777) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!8305 () tuple4!370)

(assert (=> d!7565 (= lt!7777 e!8305)))

(declare-fun c!1889 () Bool)

(declare-fun lt!7778 () (_ BitVec 32))

(assert (=> d!7565 (= c!1889 (bvsgt lt!7778 #b00000000000000000000000000000000))))

(assert (=> d!7565 (= lt!7778 (bvsub jz!20 #b00000000000000000000000000000001))))

(declare-fun lt!7779 () (_ FloatingPoint 11 53))

(declare-fun lt!7780 () (_ FloatingPoint 11 53))

(assert (=> d!7565 (= lt!7780 (fp.add roundNearestTiesToEven (select (arr!490 q!31) (bvsub jz!20 #b00000000000000000000000000000001)) lt!7779))))

(declare-fun lt!7781 () array!1116)

(assert (=> d!7565 (= lt!7781 (array!1117 (store (arr!489 lt!7764) (bvsub jz!20 jz!20) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!7763 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7779))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!7763 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7779)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!7763 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7779)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!7763 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7779))))))) (size!489 lt!7764)))))

(assert (=> d!7565 (= lt!7779 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7763)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7763) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7763) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7763)))))))))

(declare-fun e!8307 () Bool)

(assert (=> d!7565 e!8307))

(declare-fun res!11769 () Bool)

(assert (=> d!7565 (=> (not res!11769) (not e!8307))))

(assert (=> d!7565 (= res!11769 (and (bvsle #b00000000000000000000000000000000 jz!20) (bvsle jz!20 jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7763) (fp.leq lt!7763 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!7565 (= (computeModuloWhile!0 jz!20 q!31 lt!7764 jz!20 lt!7763) lt!7777)))

(declare-fun b!15122 () Bool)

(declare-fun res!11766 () Bool)

(assert (=> b!15122 (=> (not res!11766) (not e!8306))))

(assert (=> b!15122 (= res!11766 (iqInv!0 (_2!384 lt!7777)))))

(declare-fun b!15123 () Bool)

(assert (=> b!15123 (= e!8306 (bvsle (_3!316 lt!7777) #b00000000000000000000000000000000))))

(declare-fun b!15124 () Bool)

(assert (=> b!15124 (= e!8305 (computeModuloWhile!0 jz!20 q!31 lt!7781 lt!7778 lt!7780))))

(declare-fun b!15125 () Bool)

(declare-fun res!11767 () Bool)

(assert (=> b!15125 (=> (not res!11767) (not e!8307))))

(assert (=> b!15125 (= res!11767 (iqInv!0 lt!7764))))

(declare-fun b!15126 () Bool)

(declare-fun Unit!1593 () Unit!1590)

(assert (=> b!15126 (= e!8305 (tuple4!371 Unit!1593 lt!7781 lt!7778 lt!7780))))

(declare-fun b!15127 () Bool)

(assert (=> b!15127 (= e!8307 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (= (and d!7565 res!11769) b!15125))

(assert (= (and b!15125 res!11767) b!15127))

(assert (= (and d!7565 c!1889) b!15124))

(assert (= (and d!7565 (not c!1889)) b!15126))

(assert (= (and d!7565 res!11768) b!15122))

(assert (= (and b!15122 res!11766) b!15123))

(declare-fun m!24683 () Bool)

(assert (=> d!7565 m!24683))

(declare-fun m!24685 () Bool)

(assert (=> d!7565 m!24685))

(declare-fun m!24687 () Bool)

(assert (=> b!15122 m!24687))

(declare-fun m!24689 () Bool)

(assert (=> b!15124 m!24689))

(declare-fun m!24691 () Bool)

(assert (=> b!15125 m!24691))

(assert (=> b!15102 d!7565))

(declare-fun d!7567 () Bool)

(declare-fun res!11772 () Bool)

(declare-fun e!8310 () Bool)

(assert (=> d!7567 (=> (not res!11772) (not e!8310))))

(assert (=> d!7567 (= res!11772 (= (size!489 iq!76) #b00000000000000000000000000010100))))

(assert (=> d!7567 (= (iqInv!0 iq!76) e!8310)))

(declare-fun b!15130 () Bool)

(declare-fun lambda!675 () Int)

(declare-fun all20Int!0 (array!1116 Int) Bool)

(assert (=> b!15130 (= e!8310 (all20Int!0 iq!76 lambda!675))))

(assert (= (and d!7567 res!11772) b!15130))

(declare-fun m!24693 () Bool)

(assert (=> b!15130 m!24693))

(assert (=> b!15105 d!7567))

(push 1)

(assert (not b!15130))

(assert (not b!15122))

(assert (not b!15125))

(assert (not b!15124))

(assert (not b!15109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

