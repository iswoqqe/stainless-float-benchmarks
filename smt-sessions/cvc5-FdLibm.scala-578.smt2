; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3161 () Bool)

(assert start!3161)

(declare-fun b_free!69 () Bool)

(declare-fun b_next!69 () Bool)

(assert (=> start!3161 (= b_free!69 (not b_next!69))))

(declare-fun tp!104 () Bool)

(declare-fun b_and!601 () Bool)

(assert (=> start!3161 (= tp!104 b_and!601)))

(declare-fun b!18077 () Bool)

(declare-fun res!14505 () Bool)

(declare-fun e!9507 () Bool)

(assert (=> b!18077 (=> (not res!14505) (not e!9507))))

(declare-fun P!5 () Int)

(declare-datatypes ((array!1422 0))(
  ( (array!1423 (arr!623 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!623 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1422)

(declare-fun dynLambda!77 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!18077 (= res!14505 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000000100)))))

(declare-fun b!18078 () Bool)

(assert (=> b!18078 (= e!9507 (bvsge #b00000000000000000000000000001100 (size!623 a!12)))))

(declare-fun res!14517 () Bool)

(assert (=> start!3161 (=> (not res!14517) (not e!9507))))

(assert (=> start!3161 (= res!14517 (= (size!623 a!12) #b00000000000000000000000000010100))))

(assert (=> start!3161 e!9507))

(declare-fun array_inv!571 (array!1422) Bool)

(assert (=> start!3161 (array_inv!571 a!12)))

(assert (=> start!3161 tp!104))

(declare-fun b!18079 () Bool)

(declare-fun res!14512 () Bool)

(assert (=> b!18079 (=> (not res!14512) (not e!9507))))

(assert (=> b!18079 (= res!14512 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000000011)))))

(declare-fun b!18080 () Bool)

(declare-fun res!14511 () Bool)

(assert (=> b!18080 (=> (not res!14511) (not e!9507))))

(assert (=> b!18080 (= res!14511 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!18081 () Bool)

(declare-fun res!14509 () Bool)

(assert (=> b!18081 (=> (not res!14509) (not e!9507))))

(assert (=> b!18081 (= res!14509 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000000101)))))

(declare-fun b!18082 () Bool)

(declare-fun res!14514 () Bool)

(assert (=> b!18082 (=> (not res!14514) (not e!9507))))

(assert (=> b!18082 (= res!14514 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000000110)))))

(declare-fun b!18083 () Bool)

(declare-fun res!14515 () Bool)

(assert (=> b!18083 (=> (not res!14515) (not e!9507))))

(assert (=> b!18083 (= res!14515 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000001011)))))

(declare-fun b!18084 () Bool)

(declare-fun res!14508 () Bool)

(assert (=> b!18084 (=> (not res!14508) (not e!9507))))

(assert (=> b!18084 (= res!14508 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000001010)))))

(declare-fun b!18085 () Bool)

(declare-fun res!14510 () Bool)

(assert (=> b!18085 (=> (not res!14510) (not e!9507))))

(assert (=> b!18085 (= res!14510 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000001000)))))

(declare-fun b!18086 () Bool)

(declare-fun res!14507 () Bool)

(assert (=> b!18086 (=> (not res!14507) (not e!9507))))

(assert (=> b!18086 (= res!14507 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!18087 () Bool)

(declare-fun res!14516 () Bool)

(assert (=> b!18087 (=> (not res!14516) (not e!9507))))

(assert (=> b!18087 (= res!14516 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000000111)))))

(declare-fun b!18088 () Bool)

(declare-fun res!14513 () Bool)

(assert (=> b!18088 (=> (not res!14513) (not e!9507))))

(assert (=> b!18088 (= res!14513 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000001001)))))

(declare-fun b!18089 () Bool)

(declare-fun res!14506 () Bool)

(assert (=> b!18089 (=> (not res!14506) (not e!9507))))

(assert (=> b!18089 (= res!14506 (dynLambda!77 P!5 (select (arr!623 a!12) #b00000000000000000000000000000010)))))

(assert (= (and start!3161 res!14517) b!18080))

(assert (= (and b!18080 res!14511) b!18086))

(assert (= (and b!18086 res!14507) b!18089))

(assert (= (and b!18089 res!14506) b!18079))

(assert (= (and b!18079 res!14512) b!18077))

(assert (= (and b!18077 res!14505) b!18081))

(assert (= (and b!18081 res!14509) b!18082))

(assert (= (and b!18082 res!14514) b!18087))

(assert (= (and b!18087 res!14516) b!18085))

(assert (= (and b!18085 res!14510) b!18088))

(assert (= (and b!18088 res!14513) b!18084))

(assert (= (and b!18084 res!14508) b!18083))

(assert (= (and b!18083 res!14515) b!18078))

(declare-fun b_lambda!8473 () Bool)

(assert (=> (not b_lambda!8473) (not b!18088)))

(declare-fun t!723 () Bool)

(declare-fun tb!533 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!723) tb!533))

(declare-fun result!533 () Bool)

(assert (=> tb!533 (= result!533 true)))

(assert (=> b!18088 t!723))

(declare-fun b_and!603 () Bool)

(assert (= b_and!601 (and (=> t!723 result!533) b_and!603)))

(declare-fun b_lambda!8475 () Bool)

(assert (=> (not b_lambda!8475) (not b!18082)))

(declare-fun t!725 () Bool)

(declare-fun tb!535 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!725) tb!535))

(declare-fun result!535 () Bool)

(assert (=> tb!535 (= result!535 true)))

(assert (=> b!18082 t!725))

(declare-fun b_and!605 () Bool)

(assert (= b_and!603 (and (=> t!725 result!535) b_and!605)))

(declare-fun b_lambda!8477 () Bool)

(assert (=> (not b_lambda!8477) (not b!18087)))

(declare-fun t!727 () Bool)

(declare-fun tb!537 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!727) tb!537))

(declare-fun result!537 () Bool)

(assert (=> tb!537 (= result!537 true)))

(assert (=> b!18087 t!727))

(declare-fun b_and!607 () Bool)

(assert (= b_and!605 (and (=> t!727 result!537) b_and!607)))

(declare-fun b_lambda!8479 () Bool)

(assert (=> (not b_lambda!8479) (not b!18084)))

(declare-fun t!729 () Bool)

(declare-fun tb!539 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!729) tb!539))

(declare-fun result!539 () Bool)

(assert (=> tb!539 (= result!539 true)))

(assert (=> b!18084 t!729))

(declare-fun b_and!609 () Bool)

(assert (= b_and!607 (and (=> t!729 result!539) b_and!609)))

(declare-fun b_lambda!8481 () Bool)

(assert (=> (not b_lambda!8481) (not b!18077)))

(declare-fun t!731 () Bool)

(declare-fun tb!541 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!731) tb!541))

(declare-fun result!541 () Bool)

(assert (=> tb!541 (= result!541 true)))

(assert (=> b!18077 t!731))

(declare-fun b_and!611 () Bool)

(assert (= b_and!609 (and (=> t!731 result!541) b_and!611)))

(declare-fun b_lambda!8483 () Bool)

(assert (=> (not b_lambda!8483) (not b!18086)))

(declare-fun t!733 () Bool)

(declare-fun tb!543 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!733) tb!543))

(declare-fun result!543 () Bool)

(assert (=> tb!543 (= result!543 true)))

(assert (=> b!18086 t!733))

(declare-fun b_and!613 () Bool)

(assert (= b_and!611 (and (=> t!733 result!543) b_and!613)))

(declare-fun b_lambda!8485 () Bool)

(assert (=> (not b_lambda!8485) (not b!18083)))

(declare-fun t!735 () Bool)

(declare-fun tb!545 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!735) tb!545))

(declare-fun result!545 () Bool)

(assert (=> tb!545 (= result!545 true)))

(assert (=> b!18083 t!735))

(declare-fun b_and!615 () Bool)

(assert (= b_and!613 (and (=> t!735 result!545) b_and!615)))

(declare-fun b_lambda!8487 () Bool)

(assert (=> (not b_lambda!8487) (not b!18081)))

(declare-fun t!737 () Bool)

(declare-fun tb!547 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!737) tb!547))

(declare-fun result!547 () Bool)

(assert (=> tb!547 (= result!547 true)))

(assert (=> b!18081 t!737))

(declare-fun b_and!617 () Bool)

(assert (= b_and!615 (and (=> t!737 result!547) b_and!617)))

(declare-fun b_lambda!8489 () Bool)

(assert (=> (not b_lambda!8489) (not b!18080)))

(declare-fun t!739 () Bool)

(declare-fun tb!549 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!739) tb!549))

(declare-fun result!549 () Bool)

(assert (=> tb!549 (= result!549 true)))

(assert (=> b!18080 t!739))

(declare-fun b_and!619 () Bool)

(assert (= b_and!617 (and (=> t!739 result!549) b_and!619)))

(declare-fun b_lambda!8491 () Bool)

(assert (=> (not b_lambda!8491) (not b!18085)))

(declare-fun t!741 () Bool)

(declare-fun tb!551 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!741) tb!551))

(declare-fun result!551 () Bool)

(assert (=> tb!551 (= result!551 true)))

(assert (=> b!18085 t!741))

(declare-fun b_and!621 () Bool)

(assert (= b_and!619 (and (=> t!741 result!551) b_and!621)))

(declare-fun b_lambda!8493 () Bool)

(assert (=> (not b_lambda!8493) (not b!18079)))

(declare-fun t!743 () Bool)

(declare-fun tb!553 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!743) tb!553))

(declare-fun result!553 () Bool)

(assert (=> tb!553 (= result!553 true)))

(assert (=> b!18079 t!743))

(declare-fun b_and!623 () Bool)

(assert (= b_and!621 (and (=> t!743 result!553) b_and!623)))

(declare-fun b_lambda!8495 () Bool)

(assert (=> (not b_lambda!8495) (not b!18089)))

(declare-fun t!745 () Bool)

(declare-fun tb!555 () Bool)

(assert (=> (and start!3161 (= P!5 P!5) t!745) tb!555))

(declare-fun result!555 () Bool)

(assert (=> tb!555 (= result!555 true)))

(assert (=> b!18089 t!745))

(declare-fun b_and!625 () Bool)

(assert (= b_and!623 (and (=> t!745 result!555) b_and!625)))

(declare-fun m!28463 () Bool)

(assert (=> b!18087 m!28463))

(assert (=> b!18087 m!28463))

(declare-fun m!28465 () Bool)

(assert (=> b!18087 m!28465))

(declare-fun m!28467 () Bool)

(assert (=> b!18089 m!28467))

(assert (=> b!18089 m!28467))

(declare-fun m!28469 () Bool)

(assert (=> b!18089 m!28469))

(declare-fun m!28471 () Bool)

(assert (=> b!18086 m!28471))

(assert (=> b!18086 m!28471))

(declare-fun m!28473 () Bool)

(assert (=> b!18086 m!28473))

(declare-fun m!28475 () Bool)

(assert (=> b!18084 m!28475))

(assert (=> b!18084 m!28475))

(declare-fun m!28477 () Bool)

(assert (=> b!18084 m!28477))

(declare-fun m!28479 () Bool)

(assert (=> b!18079 m!28479))

(assert (=> b!18079 m!28479))

(declare-fun m!28481 () Bool)

(assert (=> b!18079 m!28481))

(declare-fun m!28483 () Bool)

(assert (=> b!18081 m!28483))

(assert (=> b!18081 m!28483))

(declare-fun m!28485 () Bool)

(assert (=> b!18081 m!28485))

(declare-fun m!28487 () Bool)

(assert (=> b!18077 m!28487))

(assert (=> b!18077 m!28487))

(declare-fun m!28489 () Bool)

(assert (=> b!18077 m!28489))

(declare-fun m!28491 () Bool)

(assert (=> start!3161 m!28491))

(declare-fun m!28493 () Bool)

(assert (=> b!18088 m!28493))

(assert (=> b!18088 m!28493))

(declare-fun m!28495 () Bool)

(assert (=> b!18088 m!28495))

(declare-fun m!28497 () Bool)

(assert (=> b!18082 m!28497))

(assert (=> b!18082 m!28497))

(declare-fun m!28499 () Bool)

(assert (=> b!18082 m!28499))

(declare-fun m!28501 () Bool)

(assert (=> b!18080 m!28501))

(assert (=> b!18080 m!28501))

(declare-fun m!28503 () Bool)

(assert (=> b!18080 m!28503))

(declare-fun m!28505 () Bool)

(assert (=> b!18083 m!28505))

(assert (=> b!18083 m!28505))

(declare-fun m!28507 () Bool)

(assert (=> b!18083 m!28507))

(declare-fun m!28509 () Bool)

(assert (=> b!18085 m!28509))

(assert (=> b!18085 m!28509))

(declare-fun m!28511 () Bool)

(assert (=> b!18085 m!28511))

(push 1)

(assert (not b_lambda!8485))

(assert (not b_lambda!8493))

(assert (not b_lambda!8481))

(assert (not b_lambda!8479))

(assert b_and!625)

(assert (not start!3161))

(assert (not b_lambda!8495))

(assert (not b_next!69))

(assert (not b_lambda!8475))

(assert (not b_lambda!8491))

(assert (not b_lambda!8483))

(assert (not b_lambda!8489))

(assert (not b_lambda!8477))

(assert (not b_lambda!8487))

(assert (not b_lambda!8473))

(check-sat)

(pop 1)

(push 1)

(assert b_and!625)

(assert (not b_next!69))

(check-sat)

(pop 1)

